// Do not remove the include below
#include "TA.h"
#define USEDT 0

MPU6050 mpu;
Encoder myEnc1(18, 19);
Encoder myEnc2(2, 3);

unsigned long ledDel, nLedDel;
bool blinkState = false, isWork = false, ledBlink = false, setSudut = false, sudutReady =
false;
unsigned int blinkDelay = 500;
void WriteMotor(float a, float b);
float avgSudut[4], inputSn;
float baseSpeed = 0;
float turn = 0;

int16_t ax, ay, az;
int16_t gx, gy, gz;

//COmm
byte buff[20], doEE = 0;
uint8_t kar;
unsigned long newTkirim, oldTkirim;
bool sm = false;
String inputString = "";         // a string to hold incoming data
boolean stringComplete = false; // whether the string is complete

//PID1
float inputS; //
int outMaxM = 500, outMinM = -500;
double SPSudut = 0; //set sudut keseimbangan diperbarui
double ITermM, lastInputS;
double kpM;
double kiM;
double kdM;

//PID2
float inputM;
double SPMotor = 0; //set kecepatan yang diinginkan
int outMaxS = 770, outMinS = -770;
double ITermS, lastInputM;
double kpS;
double kiS;
double kdS;

//PID MOTOR
float sTarget = 0;
float sKa, sKi;
float sTKa, sTKi;
unsigned int deltaT = 0;
unsigned long tKirim = 0;
float selisih;

Pid cariSudut(0, 0, 0, 10000);
Pid cariMotor(0, 0, 0, 2000);
Pid heading(0.4, 0.009, 0, 50);

//Encoder
long newposition1, newposition2, Speed_L, Speed_R;
long oldposition1 = 0, oldposition2 = 0;
unsigned long newtime = 0;
unsigned long oldtime = 0;
float vKa, vKi;
double atas1 = 0, atas2 = 0, bawah = 0;
long oldPosition = -999;

bool getDMP();
void printLog();
void Komunikasi();

// MPU control/status vars
bool dmpReady = false;  // set true if DMP init was successful
uint8_t mpuIntStatus;   // holds actual interrupt status byte from MPU
uint8_t devStatus; // return status after each device operation (0 = success, !0 = error)
uint16_t packetSize;    // expected DMP packet size (default is 42 bytes)
uint16_t fifoCount;     // count of all bytes currently in FIFO
uint8_t fifoBuffer[64]; // FIFO storage buffer
float ypr[3]; // [yaw, pitch, roll]   yaw/pitch/roll container and gravity vector
float euler[3];         // [psi, theta, phi]    Euler angle container
Quaternion q;           // [w, x, y, z]         quaternion container
VectorFloat gravity;    // [x, y, z]            gravity vector

volatile bool mpuInterrupt = false; // indicates whether MPU interrupt pin has gone high
void dmpDataReady() {
	mpuInterrupt = true;
}

void setup() {
	// join I2C bus (I2Cdev library doesn't do this automatically)
	inputString.reserve(100);
#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
	Wire.begin();
	TWBR = 24; // 400kHz I2C clock (200kHz if CPU is 8MHz)
#elif I2CDEV_IMPLEMENTATION == I2CDEV_BUILTIN_FASTWIRE
			Fastwire::setup(400, true);
#endif
	ledDel = millis();
	pinMode(PWM_MOTOR_1, OUTPUT);
	pinMode(PWM_MOTOR_2, OUTPUT);
	pinMode(MotorA, OUTPUT);
	pinMode(MotorB, OUTPUT);
	pinMode(pinSS, INPUT_PULLUP);
	pinMode(pinOk, INPUT_PULLUP);
//	pinMode(SPD_INT_R, INPUT_PULLUP);
//	pinMode(SPD_INT_L, INPUT_PULLUP);
//	pinMode(SPD_PUL_R, INPUT_PULLUP);
//	pinMode(SPD_PUL_L, INPUT_PULLUP);
//	attachInterrupt(digitalPinToInterrupt(SPD_INT_L), Encoder_L, FALLING);
//	attachInterrupt(digitalPinToInterrupt(SPD_INT_R), Encoder_R, FALLING);
	pinMode(13, OUTPUT);
	kpM = loadEEPROM(_p1);
	kiM = loadEEPROM(_i1);
	kdM = loadEEPROM(_d1);
	cariMotor.setP(kpM);
	cariMotor.setI(kiM);
	cariMotor.setD(kdM);
	kpS = loadEEPROM(_p2);
	kiS = loadEEPROM(_i2);
	kdS = loadEEPROM(_d2);
	cariSudut.setP(kpS);
	cariSudut.setI(kiS);
	cariSudut.setD(kdS);

	Serial.begin(115200);
	Serial2.begin(115200);

	// initialize device
	Serial.println(F("Initializing I2C devices..."));
	mpu.initialize();

	// verify connection
	Serial.println(F("Testing device connections..."));
	Serial.println(
			mpu.testConnection() ? F("MPU6050 connection successful") : F("MPU6050 connection failed"));

	// load and configure the DMP
	Serial.println(F("Initializing DMP..."));
	devStatus = mpu.dmpInitialize();

	// supply your own gyro offsets here, scaled for min sensitivity
	mpu.setXAccelOffset(-5790);
	mpu.setYAccelOffset(817);
	mpu.setZAccelOffset(1546);
	mpu.setXGyroOffset(-70);
	mpu.setYGyroOffset(-111);
	mpu.setZGyroOffset(26);

	if (devStatus == 0) {
		// turn on the DMP, now that it's ready
		Serial.println(F("Enabling DMP..."));
		mpu.setDMPEnabled(true);

		// enable Arduino interrupt detection
		Serial.println(F("Enabling interrupt detection (Arduino external interrupt 0)..."));
		//attachInterrupt(0, dmpDataReady, RISING);
		attachPCINT(digitalPinToPCINT(interruptBlink), dmpDataReady, RISING);
		mpuIntStatus = mpu.getIntStatus();

		Serial.println(F("DMP ready! Waiting for first interrupt..."));
		dmpReady = true;

		packetSize = mpu.dmpGetFIFOPacketSize();
	} else {
		Serial.print(F("DMP Initialization failed (code "));
		Serial.print(devStatus);
		Serial.println(F(")"));
	}
}

void loop() {
	Komunikasi();
	if (digitalRead(pinSS) == LOW) {
		if (sudutReady)
			setSudut = true;
		else
			isWork = true;
	} else if (digitalRead(pinOk) == LOW) {
		isWork = false;
		setSudut = false;
		sudutReady = false;
	}
	nLedDel = millis();
	if (nLedDel - oldTkirim >= 150) {
		Serial2.print(inputSn);
		Serial2.print(F(","));
		Serial2.print(SPSudut);
		Serial2.print(F(","));
		Serial2.print(sTarget);
		Serial2.print(F(","));
		Serial2.print(isWork);
		Serial2.print(F("\n"));
		oldTkirim = nLedDel;
	}

	if (isWork)
		blinkDelay = 100;
	else
		blinkDelay = 700;

	if (nLedDel - ledDel >= blinkDelay) {
		digitalWrite(13, ledBlink);
		ledBlink = !ledBlink;
		ledDel = nLedDel;
	}


	newtime = millis();
	if(newtime-oldtime>=25){
	newposition1 = myEnc1.read();
	newposition2 = myEnc2.read();
	//      newtime = millis();
	//vel1 = ((newposition1 - oldposition1) * 2500)  / 19 / (newtime - oldtime);
	atas1 = (newposition1 - oldposition1) * 2500;
	atas2 = (newposition2 - oldposition2) * 2500;
	bawah = 19 * (newtime - oldtime);
	vKa = (float) atas1 / bawah;
	vKi = (float) atas2 / bawah;
	selisih = vKa + vKi;
	oldposition1 = newposition1;
	oldposition2 = newposition2;
	deltaT = (float) newtime - oldtime;
	oldtime = newtime;
	}
	// if programming failed, don't try to do anything
	if (!dmpReady) return;
	if (getDMP()) {
		// wait for MPU interrupt or extra packet(s) available
		printLog();
		avgSudut[0] = avgSudut[1];
		avgSudut[1] = avgSudut[2];
		avgSudut[2] = avgSudut[3];
		avgSudut[3] = inputSn;
		inputS = (avgSudut[0] + avgSudut[1] + avgSudut[2] + avgSudut[3]) / 4;

		if (abs(inputS) >= 25) {
			isWork = false;
			setSudut = false;
			sudutReady = false;
		}
		if (isWork) {
			//turn=heading.updatePID(0,selisih);
			inputM = -(vKa - vKi) / 2;
			SPMotor=baseSpeed;
//			SPMotor += constrain(baseSpeed - SPMotor, -5, 5);
#if USEDT
			if (setSudut)
			SPSudut = cariSudut.updatePID(SPMotor, inputM, deltaT);
			else
			SPSudut = 0;
			SPSudut = constrain(SPSudut, -30, 30);
			sTarget = cariMotor.updatePID(SPSudut, inputS, deltaT);
#else
			if (setSudut)
				SPSudut = cariSudut.updatePID(-SPMotor, inputM);
			else
				SPSudut = 0;
			SPSudut = constrain(SPSudut, -30, 30);
			sTarget = cariMotor.updatePID(SPSudut, inputS);
#endif

			sTKa = turn + sTarget;
			sTKi = turn - sTarget;
			WriteMotor(sTKa, sTKi);
//			Serial.print(inputS);
//			Serial.print(F(","));
//			Serial.print(SPSudut);
//			Serial.print(F(","));
//			Serial.print(inputM);
//			Serial.print(F(","));
//			Serial.print((selisih!=0)?selisih:'\t');
//			Serial.print(F("\n"));
			if (digitalRead(pinSS) == HIGH) sudutReady = true;
		} else {
			sTKa = 0;
			sTKi = 0;
			SPSudut = 0;
			baseSpeed = 0;
			cariMotor.resetPID();
			cariSudut.resetPID();
			sTarget = 0;
			WriteMotor(sTKa, sTKi);
		}
	}
}

bool getDMP() {
	bool okl = false;
	if (mpuInterrupt || fifoCount >= packetSize) {
		// reset interrupt flag and get INT_STATUS byte
		mpuInterrupt = false;
		mpuIntStatus = mpu.getIntStatus();

      mpu.getMotion6(&ax, &ay, &az, &gx, &gy, &gz);

		// get current FIFO count
		fifoCount = mpu.getFIFOCount();

		// check for overflow (this should never happen unless our code is too inefficient)
		if ((mpuIntStatus & 0x10) || fifoCount == 1024) {
			// reset so we can continue cleanly
			okl = false;

			// otherwise, check for DMP data ready interrupt (this should happen frequently)
		} else if (mpuIntStatus & 0x02) {
			while (fifoCount < packetSize)
				fifoCount = mpu.getFIFOCount();
			mpu.getFIFOBytes(fifoBuffer, packetSize);
			fifoCount -= packetSize;

			mpu.dmpGetQuaternion(&q, fifoBuffer);

			mpu.dmpGetGravity(&gravity, &q);
			mpu.dmpGetYawPitchRoll(ypr, &q, &gravity);
			inputSn = ypr[1] * 180 / M_PI;

//         mpu.dmpGetEuler(euler, &q);
//			inputSn = euler[1] * 180 / M_PI;

			okl = true;
		}

	} else
		okl = false;
	return okl;
}

void WriteMotor(float a, float b) {
	if (a > 0) {
		digitalWrite(MotorA, LOW);
	} else if (a < 0) {
		digitalWrite(MotorA, HIGH);
	}
	if (b > 0) {
		digitalWrite(MotorB, LOW);
		b += 4;
	} else if (b < 0) {
		digitalWrite(MotorB, HIGH);
		b -= 4;
	}
	a = constrain(a, -255, 255);
	b = constrain(b, -255, 255);
	uint8_t x = (uint8_t) abs(a), y = (uint8_t) abs(b);
	analogWrite(PWM_MOTOR_1, x);
	analogWrite(PWM_MOTOR_2, y);
}
void Komunikasi() {
	switch (doEE) {
		case 1:
			saveEEPROM(_p1, bufer.f);
			doEE = 0;
			break;
		case 2:
			saveEEPROM(_i1, bufer.f);
			doEE = 0;
			break;
		case 3:
			saveEEPROM(_d1, bufer.f);
			doEE = 0;
			break;
		case 4:
			saveEEPROM(_p2, bufer.f);
			doEE = 0;
			break;
		case 5:
			saveEEPROM(_i2, bufer.f);
			doEE = 0;
			break;
		case 6:
			saveEEPROM(_d2, bufer.f);
			doEE = 0;
			break;
	}
	if (stringComplete) {
		inputString = "";
		stringComplete = false;
		kar -= 3;
		Serial.println((char) buff[kar]);
		if (kar > 3) {
			for (int i = 3; i >= 0; i--) {
				bufer.c[i] = buff[i];
			}
			Serial.println();
			if (buff[kar] == 'q') {
				kpM = bufer.f;
				doEE = 1;
				cariMotor.setP(kpM);
			} else if (buff[kar] == 'w') {
				kiM = bufer.f;
				doEE = 2;
				cariMotor.setI(kiM);
			} else if (buff[kar] == 'e') {
				kdM = bufer.f;
				doEE = 3;
				cariMotor.setD(kdM);
			} else if (buff[kar] == 'a') {
				kpS = bufer.f;
				doEE = 4;
				cariSudut.setP(kpS);
			} else if (buff[kar] == 's') {
				kiS = bufer.f;
				doEE = 5;
				cariSudut.setI(kiS);
			} else if (buff[kar] == 'd') {
				kdS = bufer.f;
				doEE = 6;
				cariSudut.setD(kdS);
			}
		} else {
			if (buff[kar] == 'o') {
				WriteMotor(0, 0);
				setSudut = false;
				isWork = false;
				baseSpeed = 0;
				SPSudut = 0;
			} else if (buff[kar] == 'p') {
				if (isWork) setSudut = true;
				isWork = true;
			} else if (buff[kar] == 'z') {
				serialFloatPrint(kpM);
				Serial2.print(F(","));
				serialFloatPrint(kiM);
				Serial2.print(F(","));
				serialFloatPrint(kdM);
				Serial2.print(F(","));
				serialFloatPrint(kpS);
				Serial2.print(F(","));
				serialFloatPrint(kiS);
				Serial2.print(F(","));
				serialFloatPrint(kdS);
				Serial2.print(F(","));
				Serial2.print(isWork);
				Serial2.print('\n');
			} else if (buff[kar] == 'F') {
				baseSpeed = 30;
			} else if (buff[kar] == 'H') {
				baseSpeed = 0;
			} else if (buff[kar] == 'G') {
				baseSpeed = -30;
			}
		}
		kar = 0;
	}
}
void printLog() {
	Serial2.print(millis());
	Serial2.print(F(","));
	Serial2.print(inputS);
	Serial2.print(F(","));
	Serial2.print(SPSudut);
	Serial2.print(F(","));
	Serial2.print(sTarget * 0.39215f);
	Serial2.print(F(","));
	Serial2.print(sTKa);
	Serial2.print(F(","));
	Serial2.print(sTKi);
	Serial2.print(F(","));
	Serial2.print((vKa-vKi)/2);
	Serial2.print(F(","));
	Serial2.print(SPMotor);
//	Serial2.print(F(","));
//	Serial2.print(vKi);
//	Serial2.print(F(","));
//	Serial2.print(sKa);
//	Serial2.print(F(","));
//	Serial2.print(sKi);
//	Serial2.print(F(","));
	Serial2.print('\n');
}

void serialEvent2() {
	while (Serial2.available()) {
		byte inChar = (byte) Serial2.read();
		buff[kar] = inChar;
		Serial.print(kar);
		Serial.println(inChar, HEX);
		kar++;
		if (sm) {
			if (inChar == '\n') {
				stringComplete = true;
				//        Serial.println();
			}
			sm = false;
		}
		if (inChar == '\r') {
			sm = true;
		}
	}
}

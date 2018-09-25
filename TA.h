// Only modify this file to include
// - function definitions (prototypes)
// - include files
// - extern variable definitions
// In the appropriate section

#ifndef _TA_H_
#define _TA_H_
#include "Arduino.h"

//add your includes for the project TA here
#include <EEPROM.h>
#include <Encoder.h>
#include "I2Cdev.h"
#include <PinChangeInterrupt.h>
#include "MPU6050_6Axis_MotionApps20.h"
#include "pid.h"

#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
#include "Wire.h"
#endif
//end of add your includes here


//add your function definitions for the project TA here

#define interruptBlink 52
#define MotorA 4
#define MotorB 5
#define PWM_MOTOR_1 7
#define PWM_MOTOR_2 6
#define pinSS 8
#define pinOk 9
#define SPD_INT_R 18   //interrupt
#define SPD_PUL_R 19
#define SPD_INT_L 2   //interrupt
#define SPD_PUL_L 3
#define _p1 20
#define _i1 24
#define _d1 28
#define _p2 32
#define _i2 36
#define _d2 40

// PID constants for the motor
const float MOTOR_P = 0.5; //18.0;
const float MOTOR_I = 0.04; //1.5;
const float MOTOR_D = 0.1;
const float outMinD = 800 ;

union tFloat {
  byte c[4];
  float f = 0;
} bufer, eBufer;

void saveEEPROM(int add, float val) {
  eBufer.f = val;
  EEPROM.update(add, eBufer.c[0]);
  EEPROM.update(add + 1, eBufer.c[1]);
  EEPROM.update(add + 2, eBufer.c[2]);
  EEPROM.update(add + 3, eBufer.c[3]);
}

float loadEEPROM(int add) {
  eBufer.c[0] = EEPROM.read(add );
  eBufer.c[1] = EEPROM.read(add + 1);
  eBufer.c[2] = EEPROM.read(add + 2);
  eBufer.c[3] = EEPROM.read(add + 3);
  if (eBufer.c[0] == 0xFF && eBufer.c[1] == 0xFF && eBufer.c[2] == 0xFF && eBufer.c[3] == 0xFF) eBufer.f = 0;
  return eBufer.f;
}

void serialFloatPrint(float f) {
  byte * b = (byte *) &f;
  //Serial.print("f:");
  for (int i = 3; i >= 0; i--) {

    byte b1 = (b[i] >> 4) & 0x0f;
    byte b2 = (b[i] & 0x0f);

    char c1 = (b1 < 10) ? ('0' + b1) : 'A' + b1 - 10;
    char c2 = (b2 < 10) ? ('0' + b2) : 'A' + b2 - 10;

    Serial2.print(c1);
    Serial2.print(c2);
  }
}


//Do not add code below this line
#endif /* _TA_H_ */

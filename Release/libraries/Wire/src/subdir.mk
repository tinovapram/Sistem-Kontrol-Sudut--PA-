################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src\Wire.cpp 

LINK_OBJ += \
.\libraries\Wire\src\Wire.cpp.o 

CPP_DEPS += \
.\libraries\Wire\src\Wire.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\Wire\src\Wire.cpp.o: D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src\Wire.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\variantHooks.cpp 

C_SRCS += \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\croutine.c \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\event_groups.c \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\heap_3.c \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\list.c \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\port.c \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\queue.c \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\stream_buffer.c \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\tasks.c \
D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\timers.c 

C_DEPS += \
.\libraries\FreeRTOS\src\croutine.c.d \
.\libraries\FreeRTOS\src\event_groups.c.d \
.\libraries\FreeRTOS\src\heap_3.c.d \
.\libraries\FreeRTOS\src\list.c.d \
.\libraries\FreeRTOS\src\port.c.d \
.\libraries\FreeRTOS\src\queue.c.d \
.\libraries\FreeRTOS\src\stream_buffer.c.d \
.\libraries\FreeRTOS\src\tasks.c.d \
.\libraries\FreeRTOS\src\timers.c.d 

LINK_OBJ += \
.\libraries\FreeRTOS\src\croutine.c.o \
.\libraries\FreeRTOS\src\event_groups.c.o \
.\libraries\FreeRTOS\src\heap_3.c.o \
.\libraries\FreeRTOS\src\list.c.o \
.\libraries\FreeRTOS\src\port.c.o \
.\libraries\FreeRTOS\src\queue.c.o \
.\libraries\FreeRTOS\src\stream_buffer.c.o \
.\libraries\FreeRTOS\src\tasks.c.o \
.\libraries\FreeRTOS\src\timers.c.o \
.\libraries\FreeRTOS\src\variantHooks.cpp.o 

CPP_DEPS += \
.\libraries\FreeRTOS\src\variantHooks.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\FreeRTOS\src\croutine.c.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\croutine.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\FreeRTOS\src\event_groups.c.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\event_groups.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\FreeRTOS\src\heap_3.c.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\heap_3.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\FreeRTOS\src\list.c.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\list.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\FreeRTOS\src\port.c.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\port.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\FreeRTOS\src\queue.c.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\queue.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\FreeRTOS\src\stream_buffer.c.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\stream_buffer.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\FreeRTOS\src\tasks.c.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\tasks.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\FreeRTOS\src\timers.c.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\timers.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-gcc" -c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -flto -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries\FreeRTOS\src\variantHooks.cpp.o: D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src\variantHooks.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"D:\Eclipse\eclipse-c\/arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR   -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\cores\arduino" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\variants\mega" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\EEPROM\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\Encoder\1.4.1\utility" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\FreeRTOS\10.0.0-11\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6" -I"D:\Eclipse\eclipse-c\arduinoPlugin\libraries\PinChangeInterrupt\1.2.6\src" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire" -I"D:\Eclipse\eclipse-c\arduinoPlugin\packages\arduino\hardware\avr\1.6.21\libraries\Wire\src" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\I2Cdev" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\MPU6050" -I"C:\Users\tinova\eclipse-Cworkspace\TA\libraries\pid" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '



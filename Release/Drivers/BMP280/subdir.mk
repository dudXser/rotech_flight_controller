################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BMP280/bmp280.c \
../Drivers/BMP280/spi_basic.c 

OBJS += \
./Drivers/BMP280/bmp280.o \
./Drivers/BMP280/spi_basic.o 

C_DEPS += \
./Drivers/BMP280/bmp280.d \
./Drivers/BMP280/spi_basic.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BMP280/%.o Drivers/BMP280/%.su Drivers/BMP280/%.cyclo: ../Drivers/BMP280/%.c Drivers/BMP280/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BMP280

clean-Drivers-2f-BMP280:
	-$(RM) ./Drivers/BMP280/bmp280.cyclo ./Drivers/BMP280/bmp280.d ./Drivers/BMP280/bmp280.o ./Drivers/BMP280/bmp280.su ./Drivers/BMP280/spi_basic.cyclo ./Drivers/BMP280/spi_basic.d ./Drivers/BMP280/spi_basic.o ./Drivers/BMP280/spi_basic.su

.PHONY: clean-Drivers-2f-BMP280


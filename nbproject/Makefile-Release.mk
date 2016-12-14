#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=arm-none-eabi-gcc
CCC=g++
CXX=g++
FC=gfortran
AS=arm-none-eabi-as

# Macros
CND_PLATFORM=GNU_ARM-Windows
CND_DLIB_EXT=dll
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/startup_stm32f303x8.o \
	${OBJECTDIR}/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_cortex.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dma.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash_ex.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_gpio.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c_ex.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr_ex.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc_ex.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim_ex.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart.o \
	${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart_ex.o \
	${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.o \
	${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/croutine.o \
	${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/event_groups.o \
	${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/list.o \
	${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.o \
	${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.o \
	${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/queue.o \
	${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/tasks.o \
	${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/timers.o \
	${OBJECTDIR}/Src/freertos.o \
	${OBJECTDIR}/Src/main.o \
	${OBJECTDIR}/Src/patlite.o \
	${OBJECTDIR}/Src/sakura_iot_alpha.o \
	${OBJECTDIR}/Src/stm32f3xx_hal_msp.o \
	${OBJECTDIR}/Src/stm32f3xx_it.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/patlite_controller.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/patlite_controller.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/patlite_controller ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/startup_stm32f303x8.o: Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/startup_stm32f303x8.s 
	${MKDIR} -p ${OBJECTDIR}/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc
	$(AS) $(ASFLAGS) -o ${OBJECTDIR}/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/startup_stm32f303x8.o Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/startup_stm32f303x8.s

${OBJECTDIR}/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.o: Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.o Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_cortex.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_cortex.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_cortex.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_cortex.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dma.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dma.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dma.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dma.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash_ex.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash_ex.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash_ex.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash_ex.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_gpio.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_gpio.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_gpio.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_gpio.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c_ex.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c_ex.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c_ex.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_i2c_ex.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr_ex.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr_ex.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr_ex.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr_ex.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc_ex.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc_ex.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc_ex.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc_ex.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim_ex.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim_ex.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim_ex.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_tim_ex.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart.c

${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart_ex.o: Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart_ex.c 
	${MKDIR} -p ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart_ex.o Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_uart_ex.c

${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.o: Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c 
	${MKDIR} -p ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.o Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c

${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/croutine.o: Middlewares/Third_Party/FreeRTOS/Source/croutine.c 
	${MKDIR} -p ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/croutine.o Middlewares/Third_Party/FreeRTOS/Source/croutine.c

${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/event_groups.o: Middlewares/Third_Party/FreeRTOS/Source/event_groups.c 
	${MKDIR} -p ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/event_groups.o Middlewares/Third_Party/FreeRTOS/Source/event_groups.c

${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/list.o: Middlewares/Third_Party/FreeRTOS/Source/list.c 
	${MKDIR} -p ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/list.o Middlewares/Third_Party/FreeRTOS/Source/list.c

${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.o: Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c 
	${MKDIR} -p ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.o Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c

${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.o: Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c 
	${MKDIR} -p ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.o Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c

${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/queue.o: Middlewares/Third_Party/FreeRTOS/Source/queue.c 
	${MKDIR} -p ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/queue.o Middlewares/Third_Party/FreeRTOS/Source/queue.c

${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/tasks.o: Middlewares/Third_Party/FreeRTOS/Source/tasks.c 
	${MKDIR} -p ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/tasks.o Middlewares/Third_Party/FreeRTOS/Source/tasks.c

${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/timers.o: Middlewares/Third_Party/FreeRTOS/Source/timers.c 
	${MKDIR} -p ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Middlewares/Third_Party/FreeRTOS/Source/timers.o Middlewares/Third_Party/FreeRTOS/Source/timers.c

${OBJECTDIR}/Src/freertos.o: Src/freertos.c 
	${MKDIR} -p ${OBJECTDIR}/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Src/freertos.o Src/freertos.c

${OBJECTDIR}/Src/main.o: Src/main.c 
	${MKDIR} -p ${OBJECTDIR}/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Src/main.o Src/main.c

${OBJECTDIR}/Src/patlite.o: Src/patlite.c 
	${MKDIR} -p ${OBJECTDIR}/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Src/patlite.o Src/patlite.c

${OBJECTDIR}/Src/sakura_iot_alpha.o: Src/sakura_iot_alpha.c 
	${MKDIR} -p ${OBJECTDIR}/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Src/sakura_iot_alpha.o Src/sakura_iot_alpha.c

${OBJECTDIR}/Src/stm32f3xx_hal_msp.o: Src/stm32f3xx_hal_msp.c 
	${MKDIR} -p ${OBJECTDIR}/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Src/stm32f3xx_hal_msp.o Src/stm32f3xx_hal_msp.c

${OBJECTDIR}/Src/stm32f3xx_it.o: Src/stm32f3xx_it.c 
	${MKDIR} -p ${OBJECTDIR}/Src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Src/stm32f3xx_it.o Src/stm32f3xx_it.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/patlite_controller.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

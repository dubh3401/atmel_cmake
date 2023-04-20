set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_MAKE_PROGRAM "C:/MinGW/bin")

set(TOOLCHAIN_PATH "C:/SysGCC/arm-eabi")
message("the path is : " ${CMAKE_CURRENT_SOURCE_DIR})

# definition of compilers
set(CMAKE_C_COMPILER ${TOOLCHAIN_PATH}/bin/arm-none-eabi-gcc.exe)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PATH}/bin/arm-none-eabi-g++.exe)

# stop compilers check, otherwise linker fails in cmake configuration steps
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)

# define linker script to use
set(LINKER_SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/src/Device_Startup/same51n20a_flash.ld")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${LINKER_SCRIPT}")

add_compile_options(
    -x
    c
    -mthumb
    -std=gnu99
    -g3
    -Og
    -nostdlib
    -mfloat-abi=softfp
    -mcpu=cortex-m4
    -mfpu=fpv4-sp-d16
    -mfloat-abi=hard
    -c
    -MD -MP -MF "$(@:%.o=%.d)" -MT "$(@:%.o=%.d)" -MT "$(@:%.o=%.o)"
)

add_link_options(
    -nostdlib
    --specs=nano.specs
    -mcpu=cortex-m4
    -mfpu=fpv4-sp-d16
    -mfloat-abi=hard
    -Xlinker --print-memory-usage
)

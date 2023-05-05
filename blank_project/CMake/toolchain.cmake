set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_MAKE_PROGRAM "C:/MinGW/bin")

set(TOOLCHAIN_PATH "C:/SysGCC/arm-eabi_10.3")
message("the path is : " ${CMAKE_CURRENT_SOURCE_DIR})

# definition of compilers
set(CMAKE_C_COMPILER ${TOOLCHAIN_PATH}/bin/arm-none-eabi-gcc.exe)

# set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PATH}/bin/arm-none-eabi-g++.exe)
# set(CMAKE_ASM_COMPILER ${TOOLCHAIN_PATH}/bin/arm-none-eabi-as.exe)

# stop compilers check, otherwise linker fails in cmake configuration steps
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)

# define linker script to use
set(LINKER_SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/src/Device_Startup/same51n20a_flash.ld")

# set(CMAKE_C_LINK_EXECUTABLE "${CMAKE_LINKER}")
add_compile_options(

    -x c
    -Wall

    -mthumb
    -Og
    -ffunction-sections
    -mlong-calls
    -g3

    -mcpu=cortex-m4
    -c
    -std=gnu99

    -mfloat-abi=softfp
    -mfpu=fpv4-sp-d16

    # -v
    -MP
)

add_link_options(
    -mthumb

    # -nodefaultlibs

    # -nostdlib
    --specs=nano.specs

    # --start-group -lm -Wl
    -mcpu=cortex-m4
    -Wl,--start-group -lm -Wl,--end-group -L"../Device_Startup/"
    -T ${LINKER_SCRIPT}

    -Wl,--gc-sections

    # -mfpu=fpv4-sp-d16
    # -mfloat-abi=softfp
    -Xlinker --print-memory-usage

    # -v

    # -mthumb -Wl,-Map="$(OutputFil/eName).map" --specs=nano.specs -Wl,--start-group -lm -Wl,--end-group -L"C:/Users/PC_Elisabeth/Documents/Tests/atmel_test/My Project/Device_Startup" -Wl,--gc-sections -mcpu=cortex-m4 -Tsame51n20a_flash.ld
)

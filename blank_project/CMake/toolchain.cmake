set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_MAKE_PROGRAM "C:/MinGW/bin")

set(TOOLCHAIN_PATH "C:/SysGCC/arm-eabi")
message("the path is : " ${CMAKE_CURRENT_SOURCE_DIR})

set(CMAKE_C_COMPILER ${TOOLCHAIN_PATH}/bin/arm-none-eabi-gcc.exe)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PATH}/bin/arm-none-eabi-g++.exe)

set(LINKER_SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/src/Device_Startup/same51n20a_flash.ld")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${LINKER_SCRIPT}")

message("Compiler Version:" ${CMAKE_CXX_COMPILER_VERSION})

add_compile_options(

    # --specs=nosys.specs
    -x
    c
    -mthumb
    -std=gnu99
    -mfloat-abi=softfp
    -mcpu=cortex-m4
    -mfpu=fpv4-sp-d16
    -mfloat-abi=hard
)

add_link_options(

    --specs=nano.specs
    -mcpu=cortex-m4
    -mfpu=fpv4-sp-d16
    -mfloat-abi=hard
)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
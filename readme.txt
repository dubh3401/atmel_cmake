# Readme
## Preliminary installations
- CMake : [link](https://cmake.org/download/)
- MinGW for windows environnement ;[link](https://www.mingw-w64.org/downloaads/#winlibscom)
- openocd for windows env : [link](https://gnutoolchains.com/arm-eabi/openocd/)
- compiler for arm : [link](https://developer.arm.com/downloads/-/gnu-rm)

## configure cmake
at project root : 
```
mkdir build
cd build
cmake -G 'MinGW Makefiles' -D CMAKE_TOOLCHAIN_FILE:PATH="CMake\toolchain.cmake" ..
```
## build program
to clean and build `cmake --build . --clean-first`
to build only `cmake --build .`

result from build will be produce in `build/`. The `.elf` file is the program to flash

## flash device
`openocd -f ./tools/openocd/atsame51_jlink.cfg -c "program ()"`

## attach debugger
To manually attach a debugger 

## Using VScode
Using VS Code requires setting up 2.
In combination, they setup the build commands and attach a debugger to the IDE.

### launch.json
This files contains the information reporting to the configuration of the `run`button.
Each configuration creates a button option. Use this file to connec to compile/build, run and attach a debugger.
As of now, the configurations support a Jlink device, for the ATSAME5X familly. 
For different debugger refer to the debugger section (insert ref)  

### tasks.json
This files contains information about subtask to be ran in the different launch configurations.
As of now, it only contains the target build commands.

## Operation
- To build, flash and attach the debugger run `flash debug` configuration 
- To build only run the `build` configuration
- To simply attach a debugger, run the `attach` configuration
## Usin CLion

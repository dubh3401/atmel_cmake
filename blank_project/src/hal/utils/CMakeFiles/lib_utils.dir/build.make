# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project

# Include any dependencies generated for this target.
include src/hal/utils/CMakeFiles/lib_utils.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/hal/utils/CMakeFiles/lib_utils.dir/compiler_depend.make

# Include the progress variables for this target.
include src/hal/utils/CMakeFiles/lib_utils.dir/progress.make

# Include the compile flags for this target's objects.
include src/hal/utils/CMakeFiles/lib_utils.dir/flags.make

src/hal/utils/CMakeFiles/lib_utils.dir/src/utils_assert.c.obj: src/hal/utils/CMakeFiles/lib_utils.dir/flags.make
src/hal/utils/CMakeFiles/lib_utils.dir/src/utils_assert.c.obj: src/hal/utils/src/utils_assert.c
src/hal/utils/CMakeFiles/lib_utils.dir/src/utils_assert.c.obj: src/hal/utils/CMakeFiles/lib_utils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/hal/utils/CMakeFiles/lib_utils.dir/src/utils_assert.c.obj"
	cd /d C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils && C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/hal/utils/CMakeFiles/lib_utils.dir/src/utils_assert.c.obj -MF CMakeFiles\lib_utils.dir\src\utils_assert.c.obj.d -o CMakeFiles\lib_utils.dir\src\utils_assert.c.obj -c C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils\src\utils_assert.c

src/hal/utils/CMakeFiles/lib_utils.dir/src/utils_assert.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib_utils.dir/src/utils_assert.c.i"
	cd /d C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils && C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils\src\utils_assert.c > CMakeFiles\lib_utils.dir\src\utils_assert.c.i

src/hal/utils/CMakeFiles/lib_utils.dir/src/utils_assert.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib_utils.dir/src/utils_assert.c.s"
	cd /d C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils && C:\SysGCC\arm-eabi\bin\arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils\src\utils_assert.c -o CMakeFiles\lib_utils.dir\src\utils_assert.c.s

# Object files for target lib_utils
lib_utils_OBJECTS = \
"CMakeFiles/lib_utils.dir/src/utils_assert.c.obj"

# External object files for target lib_utils
lib_utils_EXTERNAL_OBJECTS =

src/hal/utils/liblib_utils.a: src/hal/utils/CMakeFiles/lib_utils.dir/src/utils_assert.c.obj
src/hal/utils/liblib_utils.a: src/hal/utils/CMakeFiles/lib_utils.dir/build.make
src/hal/utils/liblib_utils.a: src/hal/utils/CMakeFiles/lib_utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library liblib_utils.a"
	cd /d C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils && $(CMAKE_COMMAND) -P CMakeFiles\lib_utils.dir\cmake_clean_target.cmake
	cd /d C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lib_utils.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/hal/utils/CMakeFiles/lib_utils.dir/build: src/hal/utils/liblib_utils.a
.PHONY : src/hal/utils/CMakeFiles/lib_utils.dir/build

src/hal/utils/CMakeFiles/lib_utils.dir/clean:
	cd /d C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils && $(CMAKE_COMMAND) -P CMakeFiles\lib_utils.dir\cmake_clean.cmake
.PHONY : src/hal/utils/CMakeFiles/lib_utils.dir/clean

src/hal/utils/CMakeFiles/lib_utils.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils C:\Users\PC_Elisabeth\Documents\SBQ\creativity_day\blank_atmel_project\blank_project\blank_project\src\hal\utils\CMakeFiles\lib_utils.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/hal/utils/CMakeFiles/lib_utils.dir/depend


cmake_minimum_required(VERSION 3.23)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

# define project
project(testProj C CXX)
set(PROJECT_NAME "testProj")
set(CMAKE_INCLUDE_CURRENT_DIR TRUE)

list(
    APPEND PROJECT_SOURCES
    main.c
)

# define MCU for project
add_definitions(-D__ATSAME51N20A__)

# incldue root source folder (each added sub dir needs its own cmaklists.txt)
add_subdirectory(src)

# create output executable
set(EXECUTABLE_NAME ${PROJECT_NAME})
set(EXECUTABLE_NAME ${EXECUTABLE_NAME}.elf)

add_executable(
    ${EXECUTABLE_NAME}
    ${PROJECT_SOURCES}
)

# source dependencies
target_link_libraries(${EXECUTABLE_NAME} PUBLIC atmel_start)
cmake_minimum_required(VERSION 3.23)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set(CMAKE_EXE_LINKER_FLAGS "--specs=nosys.specs" CACHE INTERNAL "")

# define project
project(testProj C CXX)
set(PROJECT_NAME "testProj")
set(CMAKE_INCLUDE_CURRENT_DIR TRUE)
message("project is :" ${PROJECT_NAME})
message("project compiler is :" ${CMAKE_C_COMPILER})

list(
    APPEND PROJECT_SOURCES
    main.c
)

add_definitions(-D__ATSAME51N20A__)

add_subdirectory(src/hal)
add_subdirectory(src/atmel_libs)
add_subdirectory(src)

add_executable(
    ${PROJECT_NAME}
    ${PROJECT_SOURCES}
)

target_link_libraries(testProj PUBLIC atmel_start)
cmake_minimum_required(VERSION 3.23)

project(testProj)
set(PROJECT_NAME "testProj")

list(
    APPEND PROJECT_SOURCES
    main.c
)

add_subdirectory(src/hal)
add_subdirectory(src)

add_executable(
    ${PROJECT_NAME}
    ${PROJECT_SOURCES}
)

target_link_libraries(testProj PUBLIC atmel_start)
set(LIB_NAME "lib_atmel_device")

set(LIB_SOURCES
    system_same51.c
    startup_same51.c
)

set(LIB_HEADERS
)

add_library(${LIB_NAME} OBJECT ${LIB_SOURCES} ${LIB_HEADERS})
target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries(${LIB_NAME} PUBLIC atmel_libs)

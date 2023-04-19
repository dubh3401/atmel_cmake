set(LIB_NAME "atmel_start")

set(LIB_SOURCES
    atmel_start.c
    driver_init.c
)

set(LIB_HEADERS
    atmel_start.h
    atmel_start_pins.h
    driver_init.h
)

add_subdirectory(hal)
add_subdirectory(hri)
add_subdirectory(hpl)
add_subdirectory(Config)
add_subdirectory(atmel_libs)

add_library(${LIB_NAME} STATIC ${LIB_SOURCES} ${LIB_HEADERS})
target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries(${LIB_NAME} PUBLIC lib_hal lib_hri)

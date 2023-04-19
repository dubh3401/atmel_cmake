set(LIB_NAME "lib_hal")

add_subdirectory(
    utils/
)

set(LIB_SOURCES
    src/hal_gpio.c
)

set(LIB_HEADERS
    include/hal_gpio.h
    include/hpl_gpio.h
)

add_library(${LIB_NAME} STATIC ${LIB_SOURCES} ${LIB_HEADERS})

target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME} PUBLIC lib_utils)

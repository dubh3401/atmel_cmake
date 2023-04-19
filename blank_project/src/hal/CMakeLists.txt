set(LIB_NAME "lib_hal")

add_subdirectory(
    utils/
)

set(LIB_SOURCES
    src/hal_atomic.c
    src/hal_cache.c
    src/hal_delay.c
    src/hal_gpio.c
    src/hal_init.c
    src/hal_io.c
    src/hal_sleep.c
)

set(LIB_HEADERS
    include/hal_atomic.h
    include/hal_cache.h
    include/hal_delay.h
    include/hal_gpio.h
    include/hal_init.h
    include/hal_io.h
    include/hal_sleep.h
    include/hpl_cmcc.h
    include/hpl_core.h
    include/hpl_delay.h
    include/hpl_dma.h
    include/hpl_gpio.h
    include/hpl_init.h
    include/hpl_irq.h
    include/hpl_missing_features.h
    include/hpl_ramecc.h
    include/hpl_reset.h
    include/hpl_sleep.h
)

add_library(${LIB_NAME} STATIC ${LIB_SOURCES} ${LIB_HEADERS})

target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME} PUBLIC lib_utils lib_hpl)

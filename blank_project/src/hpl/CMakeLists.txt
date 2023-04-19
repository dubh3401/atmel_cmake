set(LIB_NAME "lib_hpl")

set(LIB_SOURCES
    cmcc/hpl_cmcc.c
    core/hpl_core_m4.c
    core/hpl_init.c
    dmac/hpl_dmac.c
    gclk/hpl_gclk.c
    mclk/hpl_mclk.c
    osc32kctrl/hpl_osc32kctrl.c
    oscctrl/hpl_oscctrl.c
    pm/hpl_pm.c
    ramecc/hpl_ramecc.c
)

set(LIB_HEADERS
    core/hpl_core_port.h
    gclk/hpl_gclk_base.h
    pm/hpl_pm_base.h
    port/hpl_gpio_base.h
)

add_library(${LIB_NAME} STATIC ${LIB_SOURCES} ${LIB_HEADERS})

target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/core
    ${CMAKE_CURRENT_SOURCE_DIR}/gclk
    ${CMAKE_CURRENT_SOURCE_DIR}/pm
    ${CMAKE_CURRENT_SOURCE_DIR}/port
)

target_link_libraries(${LIB_NAME} PUBLIC lib_utils)

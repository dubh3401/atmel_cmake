set(LIB_NAME "lib_config")

set(LIB_SOURCES
)

set(LIB_HEADERS
    hpl_cmcc_config.h
    hpl_dmac_config.h
    hpl_gclk_config.h
    hpl_mclk_config.h
    hpl_osc32kctrl_config.h
    hpl_oscctrl_config.h
    hpl_port_config.h
    peripheral_clk_config.h
    RTE_Components.h
)

add_library(${LIB_NAME} STATIC ${LIB_SOURCES} ${LIB_HEADERS})

set_target_properties(${LIB_NAME} PROPERTIES LINKER_LANGUAGE CXX)
target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

# target_link_libraries(${LIB_NAME} PUBLIC libs_atmel_component libs_atmel_instance libs_atmel_pio)

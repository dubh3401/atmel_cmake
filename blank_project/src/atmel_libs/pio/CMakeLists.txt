set(LIB_NAME "libs_atmel_pio")

set(LIB_SOURCES
)

set(LIB_HEADERS
    same51n20a.h
)

add_library(${LIB_NAME} OBJECT ${LIB_SOURCES} ${LIB_HEADERS})

set_target_properties(${LIB_NAME} PROPERTIES LINKER_LANGUAGE C)
target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

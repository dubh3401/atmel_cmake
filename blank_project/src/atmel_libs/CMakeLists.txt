set(LIB_NAME "atmel_libs")

set(LIB_SOURCES
)

set(LIB_HEADERS
    same51.h
    core_cm4.h
    cmsis_version.h
    cmsis_compiler.h
)

add_library(${LIB_NAME} STATIC ${LIB_SOURCES} ${LIB_HEADERS})

set_target_properties(${LIB_NAME} PROPERTIES LINKER_LANGUAGE CXX)
target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

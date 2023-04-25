set(LIB_NAME "atmel_libs")

set(LIB_SOURCES
)

set(LIB_HEADERS
    same51.h
    core_cm4.h
    cmsis_version.h
    cmsis_compiler.h
    cmsis_gcc.h
    mpu_armv7.h
    system_same51.h
)
add_subdirectory(./component)
add_subdirectory(./instance)
add_subdirectory(./pio)
add_library(${LIB_NAME} OBJECT ${LIB_SOURCES} ${LIB_HEADERS})

set_target_properties(${LIB_NAME} PROPERTIES LINKER_LANGUAGE C)
target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries(${LIB_NAME} PUBLIC libs_atmel_component libs_atmel_instance libs_atmel_pio)

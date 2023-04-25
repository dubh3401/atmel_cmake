set(LIB_NAME "lib_utils")

set(LIB_SOURCES
    src/utils_assert.c
    src/utils_event.c
    src/utils_list.c
    src/utils_syscalls.c
)

set(LIB_HEADERS
    include/compiler.h
    include/err_codes.h
    include/events.h
    include/parts.h
    include/utils.h
    include/utils_assert.h
    include/utils_event.h
    include/utils_increment_macro.h
    include/utils_list.h
    include/utils_repeat_macro.h
)

add_library(${LIB_NAME} STATIC ${LIB_SOURCES} ${LIB_HEADERS})

target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME} PUBLIC atmel_libs lib_hri lib_config)
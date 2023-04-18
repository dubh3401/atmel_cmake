set(LIB_NAME "lib_utils")

set(LIB_SOURCES
    src/utils_assert.c
)

set(LIB_HEADERS
    include/compiler.h
    include/utils_assert.h
)

add_library(${LIB_NAME} STATIC ${LIB_SOURCES} ${LIB_HEADERS})

target_include_directories(${LIB_NAME}
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME} PUBLIC same51)
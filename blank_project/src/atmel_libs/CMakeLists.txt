set(LIB_NAME "atmel_libs")

set(LIB_SOURCES
)

set(LIB_HEADERS
    same51.h
)

add_library(${LIB_NAME} IMPORTED ${LIB_SOURCES} ${LIB_HEADERS})
target_include_directories(${LIB_NAME}
    PUBLIC
    .
)

# target_link_libraries(${LIB_NAME} PUBLIC)

cmake_minimum_required(VERSION 3.0)
project(pictest)

set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(CMAKE_VISIBILITY_INLINES_HIDDEN 1)

include_directories(${CMAKE_CURRENT_BINARY_DIR})

include(GenerateExportHeader)

add_library(mystaticlib STATIC st.c)

add_library(mysharedlib SHARED sh.c)
target_link_libraries(mysharedlib PRIVATE mystaticlib)

generate_export_header(mysharedlib)

add_executable(myexe main.c)
target_link_libraries(myexe mysharedlib)

install(TARGETS myexe DESTINATION bin)

cmake_minimum_required(VERSION 3.0)
project(pictest)

add_library(mystaticlib STATIC st.c)

add_library(mysharedlib SHARED sh.c)
target_link_libraries(mysharedlib PRIVATE mystaticlib)

add_executable(myexe main.c)
target_link_libraries(myexe mysharedlib)


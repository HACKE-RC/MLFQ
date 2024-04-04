cmake_minimum_required(VERSION 3.27)
project(MLFQ)

set(CMAKE_CXX_STANDARD 14)

include_directories(src)

add_executable(MLFQ
        src/main.cpp
        src/scheduler.cpp
        src/scheduler.hpp)

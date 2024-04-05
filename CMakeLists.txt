cmake_minimum_required(VERSION 3.27)
project(MLFQ)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY build/)

include_directories(src)

add_executable(MLFQ
        tests/tenthreads.cpp
        src/scheduler.cpp
        src/scheduler.hpp
        src/lib/lock.cpp
        src/lib/lock.hpp)

cmake_minimum_required(VERSION 3.13)
project(Pum VERSION 1.0)

set(CMAKE_CXX_STANDARD 17) 
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(LLVM REQUIRED)

add_executable(pum src/main.cpp)
target_link_libraries(pum llvm-core::llvm-core)
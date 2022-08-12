include(cmake/gcc-arm-none-eabi.cmake)
include(cmake/nrf_sdk.cmake)
include(cmake/boards.cmake)

cmake_minimum_required(VERSION 3.15.3)
project(blinky)

enable_language(C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(apps)


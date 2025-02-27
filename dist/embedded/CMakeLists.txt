cmake_minimum_required(VERSION 3.15)

set(CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_SOURCE_DIR}/toolchain-stm32.cmake")

project(embedded_project)

# Add real project root in a pretend subdirectory called "root"
add_subdirectory(../.. root)

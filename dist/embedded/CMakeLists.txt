cmake_minimum_required(VERSION 3.15)

set(CMAKE_TOOLCHAIN_FILE toolchain-stm32.cmake)

project(embedded_project)

# Set linker script generated for this target by CubeMX
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${PROJECT_SOURCE_DIR}/../../lib/CubeMX/${BVX_TARGET}/STM32F401RETx_FLASH.ld")

# Add real project root in a pretend subdirectory called "root"
add_subdirectory(../.. root)

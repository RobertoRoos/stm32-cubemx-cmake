#
# CMake settings to correctly compile for ARM
#

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(toolchain_prefix arm-none-eabi-)

set(arm_defines "")
set(arm_cpuflags "-mcpu=cortex-m33 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -mabi=aapcs")
set(arm_cflags "${arm_defines} ${arm_cpuflags} -ffunction-sections -fdata-sections -fno-strict-aliasing -fno-builtin -fshort-enums -Wno-psabi -fshort-wchar")

set(CMAKE_AR "${toolchain_prefix}ar" CACHE FILEPATH "" FORCE)
set(CMAKE_SIZE "${toolchain_prefix}size" CACHE FILEPATH "" FORCE)
set(CMAKE_RANLIB "${toolchain_prefix}ranlib")
set(CMAKE_GDB "${toolchain_prefix}gdb" CACHE FILEPATH "" FORCE)
set(CMAKE_READELF "${toolchain_prefix}readelf" CACHE FILEPATH "" FORCE)
set(CMAKE_C_COMPILER "${toolchain_prefix}gcc")
set(CMAKE_ASM_COMPILER ${CMAKE_C_COMPILER})
set(CMAKE_CXX_COMPILER "${toolchain_prefix}g++")
set(CMAKE_C_FLAGS_INIT "${arm_cflags}" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS_INIT "${arm_cflags} -fno-rtti -fno-exceptions" CACHE STRING "" FORCE)
set(CMAKE_ASM${ASM_DIALECT}_FLAGS_INIT "${arm_defines} ${arm_cpuflags}" CACHE STRING "" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "${arm_cpuflags} -Wl,--gc-sections --specs=nano.specs -Wl,--no-wchar-size-warning" CACHE INTERNAL "")
set(CMAKE_STANDARD_LIBRARIES "-lc -lnosys -lm")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

add_compile_definitions(COMPILE_FOR_EMBEDDED)

#
# CMake file at the root of the repo, but *not* the project file!
# Consider `dist/.../CMakeLists.txt` instead, they will include this file.
#

include(GNUInstallDirs)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(lib)
add_subdirectory(src)

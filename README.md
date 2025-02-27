# STM32 CubeMX CMake example

An example (or light template) on how to compile for an embedded target using STM32CubeMX for generating HAL code and CMake for building.

## File Layout

* Under `dist/` each build platform is listed.
  Here the root `CMakeLists.txt` are found.
  Build output should also appear in `dist/.../build`.
* `src/` contains folders for each application (= executable target).
  These could still be platform independent.
* `lib/` contains library targets. The generated CubeMX code is also one of those.

## CMake

The idea is that each `dist/.../` item specifies a toolchain, compiler, etc. and then includes the root CMake tree.
The whole tree can then be compiled for different platforms, be it x64, ARM, different ARM boards, etc.

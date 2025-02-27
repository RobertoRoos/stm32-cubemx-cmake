# STM32 CubeMX CMake example

An example (or light template) on how to compile for an embedded target using STM32CubeMX for generating HAL code and CMake for building.

## File Layout

* Under `dist/` each build platform is listed.
  Here the root `CMakeLists.txt` are found.
  Build output should also appear in `dist/.../build`.
* `src/` contains folders for each application (= executable target).
  These could still be platform independent.
* `lib/` contains library targets.
* `lib/CubeMX/.../` is a special library target, it can contain multiple folders with a target board each.
   Though probably only a single one is actually included.

## CMake

The idea is that each `dist/.../` item specifies a toolchain, compiler, etc. and then includes the root CMake tree.
The whole tree can then be compiled for different platforms, be it x64, ARM, different ARM boards, etc.
And when there are multiple boards for the same application, there can be CubeMX projects side-by-side.

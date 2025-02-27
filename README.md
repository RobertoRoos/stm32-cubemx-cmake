# STM32 CubeMX CMake example

An example (or light template) on how to compile for an embedded target using STM32CubeMX for generating HAL code and CMake for building.

## File Layout

* Under `dist/<platform>/` each build platform is listed.
  Here the root `CMakeLists.txt` are found.
  Build output should also appear in `dist/<platform>/build`.
* `src/` contains folders for each application (= executable target).
  These could still be platform independent.
* `lib/` contains library targets.
* `lib/CubeMX/<device>/` is a special library target, it can contain multiple folders with a target board each.
   Though probably only a single one is actually included.

## CMake

The idea is that each `dist/<platform>/` item specifies a toolchain, compiler, etc. and then includes the root CMake tree.
The whole tree can then be compiled for different platforms, be it x64, ARM, different ARM boards, etc.
And when there are multiple devices (= boards) for the same application, there can be CubeMX projects side-by-side.

## Flashing / Debugging

You can flash and debug the embedded program for example by spinning up OpenOCD, with a command like:
```cmd
openocd.exe -f board/st_nucleo_u5.cfg -c "bindto 0.0.0.0"
```

And then using cortex-debug in VS Code.

# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/yusab/Desktop/projects/CGE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/yusab/Desktop/projects/CGE/build

# Include any dependencies generated for this target.
include external/glad/CMakeFiles/glad.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/glad/CMakeFiles/glad.dir/compiler_depend.make

# Include the progress variables for this target.
include external/glad/CMakeFiles/glad.dir/progress.make

# Include the compile flags for this target's objects.
include external/glad/CMakeFiles/glad.dir/flags.make

external/glad/CMakeFiles/glad.dir/src/gl.c.obj: external/glad/CMakeFiles/glad.dir/flags.make
external/glad/CMakeFiles/glad.dir/src/gl.c.obj: external/glad/CMakeFiles/glad.dir/includes_C.rsp
external/glad/CMakeFiles/glad.dir/src/gl.c.obj: C:/Users/yusab/Desktop/projects/CGE/external/glad/src/gl.c
external/glad/CMakeFiles/glad.dir/src/gl.c.obj: external/glad/CMakeFiles/glad.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/Users/yusab/Desktop/projects/CGE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glad/CMakeFiles/glad.dir/src/gl.c.obj"
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glad && C:/msys64/mingw64/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/glad/CMakeFiles/glad.dir/src/gl.c.obj -MF CMakeFiles/glad.dir/src/gl.c.obj.d -o CMakeFiles/glad.dir/src/gl.c.obj -c C:/Users/yusab/Desktop/projects/CGE/external/glad/src/gl.c

external/glad/CMakeFiles/glad.dir/src/gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/glad.dir/src/gl.c.i"
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glad && C:/msys64/mingw64/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/yusab/Desktop/projects/CGE/external/glad/src/gl.c > CMakeFiles/glad.dir/src/gl.c.i

external/glad/CMakeFiles/glad.dir/src/gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/glad.dir/src/gl.c.s"
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glad && C:/msys64/mingw64/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/yusab/Desktop/projects/CGE/external/glad/src/gl.c -o CMakeFiles/glad.dir/src/gl.c.s

# Object files for target glad
glad_OBJECTS = \
"CMakeFiles/glad.dir/src/gl.c.obj"

# External object files for target glad
glad_EXTERNAL_OBJECTS =

lib/libglad.a: external/glad/CMakeFiles/glad.dir/src/gl.c.obj
lib/libglad.a: external/glad/CMakeFiles/glad.dir/build.make
lib/libglad.a: external/glad/CMakeFiles/glad.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:/Users/yusab/Desktop/projects/CGE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../lib/libglad.a"
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glad && $(CMAKE_COMMAND) -P CMakeFiles/glad.dir/cmake_clean_target.cmake
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glad && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glad.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glad/CMakeFiles/glad.dir/build: lib/libglad.a
.PHONY : external/glad/CMakeFiles/glad.dir/build

external/glad/CMakeFiles/glad.dir/clean:
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glad && $(CMAKE_COMMAND) -P CMakeFiles/glad.dir/cmake_clean.cmake
.PHONY : external/glad/CMakeFiles/glad.dir/clean

external/glad/CMakeFiles/glad.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/yusab/Desktop/projects/CGE C:/Users/yusab/Desktop/projects/CGE/external/glad C:/Users/yusab/Desktop/projects/CGE/build C:/Users/yusab/Desktop/projects/CGE/build/external/glad C:/Users/yusab/Desktop/projects/CGE/build/external/glad/CMakeFiles/glad.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : external/glad/CMakeFiles/glad.dir/depend


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
include external/glm/glm/CMakeFiles/glm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/glm/glm/CMakeFiles/glm.dir/compiler_depend.make

# Include the progress variables for this target.
include external/glm/glm/CMakeFiles/glm.dir/progress.make

# Include the compile flags for this target's objects.
include external/glm/glm/CMakeFiles/glm.dir/flags.make

external/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj: external/glm/glm/CMakeFiles/glm.dir/flags.make
external/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj: external/glm/glm/CMakeFiles/glm.dir/includes_CXX.rsp
external/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj: C:/Users/yusab/Desktop/projects/CGE/external/glm/glm/detail/glm.cpp
external/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj: external/glm/glm/CMakeFiles/glm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/Users/yusab/Desktop/projects/CGE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj"
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glm/glm && C:/msys64/mingw64/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj -MF CMakeFiles/glm.dir/detail/glm.cpp.obj.d -o CMakeFiles/glm.dir/detail/glm.cpp.obj -c C:/Users/yusab/Desktop/projects/CGE/external/glm/glm/detail/glm.cpp

external/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/glm.dir/detail/glm.cpp.i"
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glm/glm && C:/msys64/mingw64/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/yusab/Desktop/projects/CGE/external/glm/glm/detail/glm.cpp > CMakeFiles/glm.dir/detail/glm.cpp.i

external/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/glm.dir/detail/glm.cpp.s"
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glm/glm && C:/msys64/mingw64/bin/g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/yusab/Desktop/projects/CGE/external/glm/glm/detail/glm.cpp -o CMakeFiles/glm.dir/detail/glm.cpp.s

# Object files for target glm
glm_OBJECTS = \
"CMakeFiles/glm.dir/detail/glm.cpp.obj"

# External object files for target glm
glm_EXTERNAL_OBJECTS =

lib/libglm.a: external/glm/glm/CMakeFiles/glm.dir/detail/glm.cpp.obj
lib/libglm.a: external/glm/glm/CMakeFiles/glm.dir/build.make
lib/libglm.a: external/glm/glm/CMakeFiles/glm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:/Users/yusab/Desktop/projects/CGE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libglm.a"
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glm/glm && $(CMAKE_COMMAND) -P CMakeFiles/glm.dir/cmake_clean_target.cmake
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glm/glm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glm/glm/CMakeFiles/glm.dir/build: lib/libglm.a
.PHONY : external/glm/glm/CMakeFiles/glm.dir/build

external/glm/glm/CMakeFiles/glm.dir/clean:
	cd C:/Users/yusab/Desktop/projects/CGE/build/external/glm/glm && $(CMAKE_COMMAND) -P CMakeFiles/glm.dir/cmake_clean.cmake
.PHONY : external/glm/glm/CMakeFiles/glm.dir/clean

external/glm/glm/CMakeFiles/glm.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/yusab/Desktop/projects/CGE C:/Users/yusab/Desktop/projects/CGE/external/glm/glm C:/Users/yusab/Desktop/projects/CGE/build C:/Users/yusab/Desktop/projects/CGE/build/external/glm/glm C:/Users/yusab/Desktop/projects/CGE/build/external/glm/glm/CMakeFiles/glm.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : external/glm/glm/CMakeFiles/glm.dir/depend



cmake_minimum_required(VERSION 3.15)
project(CGE)

# Disable compiler-specific extensions to the C++ standard. This ensures that the
# codebase remains portable and can be compiled using any compliant C++ compiler.
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(OpenGL REQUIRED)

# Define the output directories for the built archives, libraries, and runtime
# executables respectively. These settings help in organizing the built files.
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# GLFW has a CMake script for us to use, but it has some unnecessary settings that are on
# by default. We just disable these and then include their CMake script, and link our
# executable to their CMake library target 'glfw'. Thanks to Nils P. Skålerud.
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(BUILD_SHARED_LIBS OFF CACHE BOOL "" FORCE)
set(GLFW_INSTALL OFF CACHE BOOL "" FORCE)
set(GLFW_VULKAN_STATIC OFF CACHE BOOL "" FORCE)

add_subdirectory(external/glad)
add_subdirectory(external/glfw)
add_subdirectory(external/glm)
add_subdirectory(external/tinyobjloader)

# Create a header-only interface for the 'stb' library. Since 'stb' typically consists
# of single-header libraries, this approach makes it easy to integrate into the project.
add_library(stb INTERFACE)
target_include_directories(stb INTERFACE external/stb)

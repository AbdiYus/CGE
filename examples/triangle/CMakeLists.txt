project(triangle)

# Triangle 
add_executable(triangle main.cpp)
target_link_libraries(${PROJECT_NAME} PRIVATE glad glfw framework::CGE)

project(framework)

# Cpp Graphics Engine (CGE)
add_library(CGE CGE/CGE.cpp)
add_library(framework::CGE ALIAS CGE)
target_include_directories(CGE PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/CGE)
target_link_libraries(CGE PUBLIC glfw glad)

# Entity 
add_library(entity entity/entity.cpp)
add_library(framework::entity ALIAS entity)
target_include_directories(entity PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/entity)
target_link_libraries(entity PUBLIC glfw glad)

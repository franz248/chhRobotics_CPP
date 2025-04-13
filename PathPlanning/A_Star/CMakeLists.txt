cmake_minimum_required(VERSION 3.21)
project(astar_project)

set(CMAKE_CXX_STANDARD 14)

find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIR})
find_package(Python3 COMPONENTS Interpreter Development REQUIRED)
include_directories(${Python3_INCLUDE_DIRS})
# include_directories(/usr/include/python3.8)

# astar
add_executable(astar_demo Astar.cpp main.cpp)
# target_link_libraries(astar_demo PRIVATE chhRobotics_CPP)
target_link_libraries(astar_demo PRIVATE Python3::Python)
target_link_libraries(astar_demo PRIVATE Eigen3::Eigen)


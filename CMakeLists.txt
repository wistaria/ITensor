cmake_minimum_required(VERSION 3.15)
project(ITensor VERSION 3.1.11 LANGUAGES CXX)
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()
enable_testing()

find_package(LAPACK)
find_package(OpenMP)

add_subdirectory(itensor)
add_subdirectory(sample)
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/tutorial
  DESTINATION share/itensor
  FILES_MATCHING PATTERN "*.txt" PATTERN "*.cc" PATTERN "*.h" PATTERN "inputfile_*")

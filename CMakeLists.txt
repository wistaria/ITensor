cmake_minimum_required(VERSION 3.15)
project(ITensor VERSION 3.2.0 LANGUAGES CXX)
if(APPLE)
  set(DYLIB_COMPAT_VERSION 3.0.0)
  set(DYLIB_CURRENT_VERSION 3.2.0)
endif()
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()
enable_testing()

find_package(LAPACK)
find_package(OpenMP)

add_subdirectory(itensor)
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
  add_subdirectory(sample)
endif()
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/tutorial
  DESTINATION share/itensor
  FILES_MATCHING PATTERN "*.txt" PATTERN "*.cc" PATTERN "*.h" PATTERN "inputfile_*")

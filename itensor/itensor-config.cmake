include(CMakeFindDependencyMacro)

find_dependency(LAPACK REQUIRED)
find_dependency(OpenMP)

include("${CMAKE_CURRENT_LIST_DIR}/itensor-targets.cmake")

cmake_minimum_required(VERSION 3.10) # version can be different

list(APPEND CMAKE_PREFIX_PATH "${QUICKSORT_SOURCE_DIR}/googletest/build")

find_library(GTEST gtestd)
find_library(GTEST_MAIN gtest_maind)
find_package(OpenMP)

add_executable(testThreaded testThreaded.cpp) # add this executable

target_link_libraries(testThreaded PRIVATE ${GTEST} ${GTEST_MAIN} pthread PUBLIC OpenMP::OpenMP_CXX) # link google test to this executable

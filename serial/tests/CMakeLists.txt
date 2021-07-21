cmake_minimum_required(VERSION 3.10) # version can be different

list(APPEND CMAKE_PREFIX_PATH "${QUICKSORT_SOURCE_DIR}/googletest/build")

find_library(GTEST gtestd)
find_library(GTEST_MAIN gtest_maind)

add_executable(testSerial testSerial.cpp) # add this executable

target_link_libraries(testSerial PRIVATE ${GTEST} ${GTEST_MAIN} pthread) # link google test to this executable

cmake_minimum_required(VERSION 3.10) # version can be different

project(QUICKSORT) #name of your project

set(THREADS_ENABLED TRUE)

add_subdirectory(googletest) # add googletest subdirectory
include_directories(googletest/googletest/include) # this is so we can #include <gtest/gtest.h>

if(THREADS_ENABLED)
    add_subdirectory(threaded)
else()
    add_subdirectory(serial)
endif(THREADS_ENABLED)
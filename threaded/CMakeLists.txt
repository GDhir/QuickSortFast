cmake_minimum_required(VERSION 3.10) # version can be different

project(THREADED_QUICKSORT) #name of your project

option(TESTING_ENABLED "Option to enable test creation for quicksort" True)

add_subdirectory(src)

if(TESTING_ENABLED)
    add_subdirectory(tests)
    enable_testing()
    add_test(NAME MyTest COMMAND Test)
endif(TESTING_ENABLED)
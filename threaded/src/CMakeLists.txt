
find_package(OpenMP)

add_library(threadedQuickSort_omp threadedQuickSort_omp.cpp)

target_link_libraries(threadedQuickSort_omp PUBLIC OpenMP::OpenMP_CXX)

#set_target_properties(serialQuickSort PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${SERIAL_QUICKSORT_SOURCE_DIR}/build/lib)

add_executable(runScript_threaded runScript_threaded.cpp)

target_link_libraries(runScript_threaded PUBLIC OpenMP::OpenMP_CXX)

#set_target_properties(runScript_serial PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${SERIAL_QUICKSORT_SOURCE_DIR}/build/bin)


add_library(serialQuickSort serialQuickSort.cpp)

#set_target_properties(serialQuickSort PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${SERIAL_QUICKSORT_SOURCE_DIR}/build/lib)

add_executable(runScript_serial runScript_serial.cpp)

#set_target_properties(runScript_serial PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${SERIAL_QUICKSORT_SOURCE_DIR}/build/bin)

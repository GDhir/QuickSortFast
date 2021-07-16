# QuickSortFast
Repository displays C++ implementation of serial and multithreaded implementation of quicksort

In order to compile the threaded implementation, install OpenMP library first from the web. 
Once OpenMP is installed, to compile directly from terminal, use -fopenmp flag while compiling
multithreaded source files.

For example,

/usr/bin/g++ -fopenmp -o /home/gaurav/QuickSort/src/runScript_threaded /home/gaurav/QuickSort/src/runScript_threaded.cpp

command would be required to compile the threaded source file.

You can specify the number of threads used by OpenMP via the following command:

export OMP_NUM_THREADS="YOUR SPECIFIED NUMBER OF THREADS"

Implementation Limitations:

This example is just a demonstration of performing multithreading via tasking based queue implementation using OpenMP.
In general, this implementation would suffer from contention (due to locking) on the queue used for storing the tasks. 
As a result, speedups might be limited for higher number of threads. 

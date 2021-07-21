#include <iostream>
#include <queue>
#include <utility>
#include <cmath>
#include "threadedQuickSort_omp.cpp"

/* Iterative Implementation of serial Quicksort algorithm */

template<typename T>
void showQueue( T& taskQueue ) {

    /* Utility to show the contents of a queue for debugging purposes */

    while ( !taskQueue.empty() ) {

        auto task = taskQueue.front();
        std::cout << task.first << "\t" << task.second << "\n";
        taskQueue.pop();
    }
}


int main() {

    std::vector<int> arr = {1, 3, 2, 5, 6, -1};

    quickSort(arr);

    for(const auto& item: arr) {
        std::cout << item << "\t";
    }

    return 0;
}
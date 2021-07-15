#include <iostream>
#include <queue>
#include <utility>
#include <cmath>

template<typename T>
int partition(T& arr, int left, int pivot, int& pivotIdx, int right) {
    
    /* Partition function implemented to partition the contents across the array in quicksort */

    int idx{left}, leftIdx{left};

    int temp{ arr.at(leftIdx) };

    while(idx <= right) {
        if ( arr.at(idx) < pivot ) {
            temp = arr.at(idx);
            arr.at(idx) = arr.at(leftIdx);
            arr.at(leftIdx) = temp;

            if (leftIdx == pivotIdx)
                pivotIdx = idx;

            leftIdx += 1;

        }

        idx += 1;  
    }

    return leftIdx;

}

template<typename T>
void quickSort(T& arr) {

    /* Quicksort implementation involving task based serial implementation */

    if (arr.empty())
        return;

    /* Queue storing the task partitions of array to be independently sorted */
    std::queue< std::pair<int, int> > taskQueue;

    int len = static_cast<int>( arr.size() );

    /* Initialization of the first task to be sorted. First task would always involve
    sorting the entire array */
    std::pair<int, int> indices{ 0, static_cast<int>(len) - 1 };

    taskQueue.push(indices);
    int pivot{0};
    int partitionPoint{0};
    int temp{0};

    while( !taskQueue.empty() ) {

        const auto& task = taskQueue.front();

        if (task.first < task.second) {
            pivot = std::floor( (task.first + task.second)/2 );
            partitionPoint = partition(arr, task.first, arr.at(pivot), pivot, task.second);
            temp = arr.at(pivot);
            arr.at(pivot) = arr.at(partitionPoint);
            arr.at(partitionPoint) = temp;
            taskQueue.push({task.first, partitionPoint});
            taskQueue.push({partitionPoint + 1, task.second});
        }

        taskQueue.pop();

    }

}
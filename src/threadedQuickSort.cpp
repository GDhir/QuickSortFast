#include <iostream>
#include <queue>
#include <utility>
#include <cmath>
#include <omp.h>

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

    /* Quicksort implementation involving task based threaded implementation */

    if (arr.empty())
        return;

    /* Queue storing the task partitions of array to be independently sorted */
    std::queue< std::pair<int, int> > taskQueue;

    int len = static_cast<int>( arr.size() );

    /* Initialization of the first task to be sorted. First task would always involve
    sorting the entire array */
    std::pair<int, int> indices{ 0, static_cast<int>(len) - 1 };
    std::pair<int, int> task;

    taskQueue.push(indices);
    int pivot{0};
    int partitionPoint{0};
    int temp{0};

    // Number of active threads working on the task snatched from the queue
    int activeThreadCount{0};

    bool abort{false};

    // Lock responsible for writing serially to the queue and updating activeThreadCount
    omp_lock_t writelock;  
    omp_init_lock(&writelock);

    // Start of the parallel region
#pragma omp parallel shared(activeThreadCount, taskQueue, arr, abort) private(task, pivot, temp, partitionPoint) 
    {
        while( !abort ) {
            omp_set_lock(&writelock);

            if( !taskQueue.empty() ) {

                // Snatch the task from the queue and update the active thread count
                task = taskQueue.front();
                taskQueue.pop();
                activeThreadCount += 1;
                //std::cout << omp_get_thread_num() << std::endl;
                //std::cout << task.first << "\t" << task.second << std::endl;

            }
            else if (activeThreadCount == 0) {
                /* If there are no active threads and the taskQueue is empty, this means 
                that the array is now sorted */

                abort = true;
                omp_unset_lock(&writelock);
                continue;
            }
            else {
                omp_unset_lock(&writelock);
                continue;
            }

            omp_unset_lock(&writelock);

            if (task.first < task.second) {
                pivot = std::floor( (task.first + task.second)/2 );
                partitionPoint = partition(arr, task.first, arr.at(pivot), pivot, task.second);
                temp = arr.at(pivot);
                arr.at(pivot) = arr.at(partitionPoint);
                arr.at(partitionPoint) = temp;

                omp_set_lock(&writelock);

                taskQueue.push({task.first, partitionPoint - 1});
                taskQueue.push({partitionPoint + 1, task.second});
                activeThreadCount -= 1;
                
                //std::cout << omp_get_thread_num() << "\t" << omp_get_num_threads() << std::endl;

                omp_unset_lock(&writelock);
            }
            else {
                omp_set_lock(&writelock);
                activeThreadCount -= 1;
                omp_unset_lock(&writelock);
                continue;
            }
        }        
    }
    omp_destroy_lock(&writelock);
}
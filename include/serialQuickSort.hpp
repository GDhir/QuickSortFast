#ifndef serialQuickSort
#define serialQuickSort

template<typename T>
int partition(T& arr, int left, int pivot, int& pivotIdx, int right);

template<typename T>
void quickSort(T& arr);

#endif
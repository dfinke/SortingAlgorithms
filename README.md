# Sorting

* Bubble Sort: `O(n^2)`
* Bucket Sort:
* Counting Sort:
* Heap Sort: `O(n log(n))`
* Insertion Sort: `O(n^2)`
* Merge Sort: `O(n log(n))`
* Quick Sort: `O(n log(n))`
* Selection Sort: `O(n^2)`

|Type|Description|
|---|---|
|Bubble Sort|Is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted. The algorithm, which is a comparison sort, is named for the way smaller or larger elements "bubble" to the top of the list.|
|Bucket Sort|Is a sorting algorithm that works by distributing the elements of an array into a number of buckets. Each bucket is then sorted individually, either using a different sorting algorithm, or by recursively applying the bucket sorting algorithm. It is a distribution sort, a generalization of pigeonhole sort that allows multiple keys per bucket, and is a cousin of radix sort in the most-to-least significant digit flavor. Bucket sort can be implemented with comparisons and therefore can also be considered a comparison sort algorithm. The computational complexity depends on the algorithm used to sort each bucket, the number of buckets to use, and whether the input is uniformly distributed.|
|Counting Sort|Is an algorithm for sorting a collection of objects according to keys that are small positive integers; that is, it is an integer sorting algorithm. It operates by counting the number of objects that possess distinct key values, and applying prefix sum on those counts to determine the positions of each key value in the output sequence. Its running time is linear in the number of items and the difference between the maximum key value and the minimum key value, so it is only suitable for direct use in situations where the variation in keys is not significantly greater than the number of items. It is often used as a subroutine in radix sort, another sorting algorithm, which can handle larger keys more efficiently.|
|Heap Sort|Is a comparison-based sorting algorithm. Heapsort can be thought of as an improved selection sort: like selection sort, heapsort divides its input into a sorted and an unsorted region, and it iteratively shrinks the unsorted region by extracting the largest element from it and inserting it into the sorted region. Unlike selection sort, heapsort does not waste time with a linear-time scan of the unsorted region; rather, heap sort maintains the unsorted region in a heap data structure to more quickly find the largest element in each step.|
|Insertion Sort|Is a simple sorting algorithm that builds the final sorted array (or list) one item at a time. It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort, or merge sort.|
|Merge  Sort|Is an efficient, general-purpose, and comparison-based sorting algorithm. Most implementations produce a stable sort, which means that the order of equal elements is the same in the input and output. Merge sort is a divide-and-conquer algorithm that was invented by John von Neumann in 1945. A detailed description and analysis of bottom-up merge sort appeared in a report by Goldstine and von Neumann as early as 1948.|
|Quick Sort|Is an in-place sorting algorithm. Developed by British computer scientist Tony Hoare in 1959 and published in 1961, it is still a commonly used algorithm for sorting. When implemented well, it can be somewhat faster than merge sort and about two or three times faster than heapsort.|
|Selection Sort|Is an in-place comparison sorting algorithm. It has an O(n2) time complexity, which makes it inefficient on large lists, and generally performs worse than the similar insertion sort. Selection sort is noted for its simplicity and has performance advantages over more complicated algorithms in certain situations, particularly where auxiliary memory is limited.|

# Benchmark

## PowerShell Version: 5.1.18362.145

```
Benchmark: DoBench

Technique                    Time            RelativeSpeed Throughput
---------                    ----            ------------- ----------
PowerShellSortObjectInObject 00:00:00.302804 1x            33.02/s
PowerShellSortObjectPipe     00:00:00.405994 1.34x         24.63/s
QuickSort                    00:00:00.640130 2.11x         15.62/s
CountingSort                 00:00:00.641724 2.12x         15.58/s
BucketSort                   00:00:00.724440 2.39x         13.8/s
SelectionSort                00:00:02.220003 7.33x         4.5/s
MergeSort                    00:00:02.255250 7.45x         4.43/s
InsertionSort                00:00:02.901976 9.58x         3.45/s
HeapSort                     00:00:03.597627 11.88x        2.78/s
BubbleSort                   00:00:04.207017 13.89x        2.38/s
```

## PowerShell Version: 7.0.0-preview.3

```
Benchmark: DoBench
Technique                    Time            RelativeSpeed Throughput
---------                    ----            ------------- ----------
PowerShellSortObjectInObject 00:00:00.246744 1x            40.53/s
CountingSort                 00:00:00.518265 2.1x          19.3/s
QuickSort                    00:00:00.519477 2.11x         19.25/s
BucketSort                   00:00:00.540518 2.19x         18.5/s
PowerShellSortObjectPipe     00:00:00.825575 3.35x         12.11/s
SelectionSort                00:00:01.285905 5.21x         7.78/s
InsertionSort                00:00:01.652678 6.7x          6.05/s
MergeSort                    00:00:01.940894 7.87x         5.15/s
BubbleSort                   00:00:02.345025 9.5x          4.26/s
HeapSort                     00:00:03.111185 12.61x        3.21/s
```

## PowerShell Version: 7.0.0-preview.5

```
Benchmark: DoBench

Technique                    Time            RelativeSpeed Throughput
---------                    ----            ------------- ----------
PowerShellSortObjectInObject 00:00:00.311540 1x            32.1/s
PowerShellSortObjectPipe     00:00:00.351608 1.13x         28.44/s
QuickSort                    00:00:00.585106 1.88x         17.09/s
CountingSort                 00:00:00.627661 2.01x         15.93/s
BucketSort                   00:00:00.635744 2.04x         15.73/s
SelectionSort                00:00:01.211441 3.89x         8.25/s
InsertionSort                00:00:01.744976 5.6x          5.73/s
MergeSort                    00:00:02.047297 6.57x         4.88/s
BubbleSort                   00:00:02.317352 7.44x         4.32/s
HeapSort                     00:00:03.418777 10.97x        2.93/s
```

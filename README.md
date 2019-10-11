# Sorting

* Bubble Sort: `O(n^2)`
* Bucket Sort:
* Counting Sort:
* Heapsort: `O(n log(n))`
* Insertion Sort: `O(n^2)`
* Mergesort: `O(n log(n))`
* Quicksort: `O(n log(n))`
* Selection Sort: `O(n^2)`

# Benchmark


## PowerShell Version: 5.1.18362.145

```
Benchmark: DoBench

Technique     Time            RelativeSpeed Throughput
---------     ----            ------------- ----------
CountingSort  00:00:00.617699 1x            16.19/s
QuickSort     00:00:00.622570 1.01x         16.06/s
BucketSort    00:00:00.638754 1.03x         15.66/s
MergeSort     00:00:02.145634 3.47x         4.66/s
SelectionSort 00:00:02.457785 3.98x         4.07/s
InsertionSort 00:00:02.823584 4.57x         3.54/s
HeapSort      00:00:03.531725 5.72x         2.83/s
BubbleSort    00:00:04.144260 6.71x         2.41/s
```

## PowerShell Version: 7.0.0-preview.3

```
Benchmark: DoBench
Technique     Time            RelativeSpeed Throughput
---------     ----            ------------- ----------
QuickSort     00:00:00.496911 1x            20.12/s
CountingSort  00:00:00.499782 1.01x         20.01/s
BucketSort    00:00:00.504835 1.02x         19.81/s
SelectionSort 00:00:01.356194 2.73x         7.37/s
InsertionSort 00:00:01.523867 3.07x         6.56/s
BubbleSort    00:00:02.155551 4.34x         4.64/s
MergeSort     00:00:02.320516 4.67x         4.31/s
HeapSort      00:00:02.986908 6.01x         3.35/s
```

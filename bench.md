
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

## PowerShell Version: 7.3.3

```
Technique                    Time            RelativeSpeed Throughput
---------                    ----            ------------- ----------
PowerShellSortObjectInObject 00:00:00.283801 1x            35.24/s
PowerShellSortObjectPipe     00:00:00.354330 1.25x         28.22/s
BucketSort                   00:00:00.573679 2.02x         17.43/s
CountingSort                 00:00:00.579028 2.04x         17.27/s
QuickSort                    00:00:00.643806 2.27x         15.53/s
SelectionSort                00:00:01.084849 3.82x         9.22/s
InsertionSort                00:00:01.529397 5.39x         6.54/s
BubbleSort                   00:00:02.100335 7.4x          4.76/s
MergeSort                    00:00:02.417965 8.52x         4.14/s
HeapSort                     00:00:03.855357 13.58x        2.59/s
```

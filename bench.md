
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

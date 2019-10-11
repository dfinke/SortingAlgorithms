
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

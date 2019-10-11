#Requires -Modules Benchpress

. .\BubbleSort.ps1
. .\BucketSort.ps1
. .\CountingSort.ps1
. .\HeapSort.ps1
. .\InsertionSort.ps1
. .\MergeSort.ps1
. .\QuickSort.ps1
. .\SelectionSort.ps1

function GenList {    
    for ($i = 1; $i -lt 1001; $i++) {
        Get-Random -Minimum 1 -Maximum 1000
    }
}

Measure-Benchmark  -RepeatCount 10 -Technique @{
    BubbleSort = {
        [BubbleSort]::Sort((GenList))
    }

    BucketSort = {        
        GenList
        [BucketSort]::Sort((GenList))
    }

    CountingSort = {        
        GenList
        [CountingSort]::Sort((GenList))
    }

    HeapSort = {        
        GenList
        [HeapSort]::Sort((GenList))
    }

    InsertionSort = {        
        GenList
        [InsertionSort]::Sort((GenList))
    }

    MergeSort = {        
        GenList
        [MergeSort]::Sort((GenList))
    }

    QuickSort = {        
        $list=GenList
        [QuickSort]::Sort($list, 0, $list.Count-1)
    }

    SelectionSort = {        
        
        [SelectionSort]::Sort((GenList))
    }

    PowerShellSortObjectInObject = {        
        $list=GenList
        Sort-Object -InputObject $list
    }

    PowerShellSortObjectPipe= {        
        $list=GenList
        $list | Sort-Object
    }
}
class CountingSort {
    static Sort($targetList) {
        $min = 0
        $max = 0
        
        for ($counter = 0; $counter -lt $targetList.Count; $counter++) {
            if ($targetList[$counter] -lt $min) { $min = $targetList[$counter] }
            if ($targetList[$counter] -gt $max) { $max = $targetList[$counter] }
        }

        $arrayBucket = New-Object int[] ($max - $min + 1)        
        
        for($counter = 0; $counter -lt $targetList.Count; $counter++) {
            $arrayBucket[$targetList[$counter]]++;   
        }
        
        $lastPosition = 0
        for ($counter = 0; $counter -lt $arrayBucket.Count ; $counter++) {
            for ($innerCounter = 0; $innerCounter -lt $arrayBucket[$counter]; $innerCounter++) {
                $targetList[$lastPosition++] = $counter
            }
        }
    }
}

$list = (1..1000 | %{Get-Random -Minimum 1 -Maximum 1000})

[CountingSort]::Sort($list)


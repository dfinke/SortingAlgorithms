class InsertionSort {
    static Sort($targetList) {
        $n=$targetList.count        

        for ($i = 0; $i -lt $n-1; $i++) {
            $j=$i+1

            while($j -gt 0) {
                
                if($targetList[$j-1] -gt $targetList[$j]) {
                    $temp=$targetList[$j-1]
                    $targetList[$j-1]=$targetList[$j]
                    $targetList[$j]=$temp
                }

                $j--
            }
        }
    }
}

$list = (1..1000 | %{Get-Random -Minimum 1 -Maximum 10000})
[InsertionSort]::Sort($list)

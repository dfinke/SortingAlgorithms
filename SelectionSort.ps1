class SelectionSort {
    static Sort($targetList) {
        $n=$targetList.count

        for ($i = 0; $i -lt $n; $i++) {
            for ($j = $i+1; $j -lt $n; $j++) {
                if($targetList[$j] -lt $targetList[$i]) {
                    $tmp = $targetList[$i]
                    $targetList[$i]=$targetList[$j]
                    $targetList[$j]=$tmp
                }
            }
        }
    }
}

$list = (1..1000 | %{Get-Random -Minimum 1 -Maximum 10000})
[SelectionSort]::Sort($list)
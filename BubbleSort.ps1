# https://github.com/ztgu/sorting_algorithms_py

class BubbleSort {
    static Sort($targetList) {
        $n = $targetList.Count

        for ($i = 0; $i -lt $n; $i+=1) {
            for ($j = 0; $j -lt $n-1; $j+=1) {
                if($targetList[$j] -gt $targetList[$j+1]) {
                    $temp = $targetList[$j+1]
                    $targetList[$j+1]=$targetList[$j]
                    $targetList[$j]=$temp
                }
            }
        }
    }
}

$list = (1..1000 | %{Get-Random -Minimum 1 -Maximum 1000})
[BubbleSort]::Sort($list)

$outFile = ".\bench.md"
'' | Add-Content $outFile
"## PowerShell Version: $(($PSVersionTable).PSVersion.ToString())" | Add-Content $outFile

$r = .\DoBench.ps1 | Out-String

'' | Add-Content $outFile
'```' | Add-Content $outFile
$r.Trim() | Add-Content $outFile
'```' | Add-Content $outFile
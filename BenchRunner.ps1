"PowerShell Version: $(($PSVersionTable).PSVersion.ToString())" | Add-Content .\bench.txt

.\DoBench.ps1 | Out-String | Add-Content .\bench.txt
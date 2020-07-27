New-Item -Path C:\OTSK
“ComputerName” | OutFile -FilePath C:\OTSK\List_of_Targets.CSV
Get-ADComputer -filer ‘Name -like “*pattern*”’ | Select-Object -ExpandProperty Name | OutFile -FilePath C:\OTSK\List_of_Targets.csv -append

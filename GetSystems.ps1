#(C) 2020 BlueTeamHandbook.com / Don Murdoch
# RSAT is needed.
Import-Module ActiveDirectory

$out = $env:HOMEDRIVE + $env:HOMEPATH + "\OSTK"
New-Item -ItemType Directory $out

“ComputerName” | OutFile -FilePath $out\List_of_Targets.CSV
Get-ADComputer -filer ‘Name -like “*pattern*”’ | Select-Object -ExpandProperty Name | OutFile -FilePath C:\OTSK\List_of_Targets.csv -append

# or

Get-ADComputer -Filter * | select DistinguishedName, DNSHostName, Name | export-csv -path $out\List_of_Targets.CSV

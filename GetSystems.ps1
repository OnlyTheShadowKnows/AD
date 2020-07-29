#(C) 2020 BlueTeamHandbook.com / Don Murdoch
# RSAT is needed.
Import-Module ActiveDirectory

$out = $env:HOMEDRIVE + $env:HOMEPATH + "\OSTK"
if (-not (Test-path -Path $out -PathType Container )) {
   New-Item -ItemType Directory 
}
# make header
select “Name” | Export-CSV -Path $out\List_of_Targets.CSV -NoTypeInformation
Get-ADComputer -Filter 'Name -like "*AD*"' | Select Name | Export-Csv -Path $out\List_of_Targets.CSV -append

# or as an alternate
Get-ADComputer -Filter * | select DistinguishedName, DNSHostName, Name | export-csv -path $out\List_of_Targets2.CSV

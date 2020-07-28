# (c) 2020 BlueTeamHandbook.com Don Murdoch

Import-Module ActiveDirectory

$out = $env:HOMEDRIVE + $env:HOMEPATH + "\OSTK"
New-Item -ItemType Directory $out

$g = "Domain Admins"
Get-ADGroupMember -identity $g | select objectClass,SamAccountName,name,distinguishedName | 
Export-csv -path $out\$g.csv -NoTypeInformation

$g = "Enterprise Admins"
Get-ADGroupMember -identity $g  | select objectClass,SamAccountName,name,distinguishedName | 
Export-csv -path $out\$g.csv -NoTypeInformation

$g = "Schema Admins"
Get-ADGroupMember -identity $g | select objectClass,SamAccountName,name,distinguishedName | 
Export-csv -path $out\$g.csv -NoTypeInformation

$g = "Account Operators" 
Get-ADGroupMember -identity $g | select objectClass,SamAccountName,name,distinguishedName | 
Export-csv -path $out\$g.csv -NoTypeInformation

$g = "Backup Operators"
Get-ADGroupMember -identity $g | select objectClass,SamAccountName,name,distinguishedName | 
Export-csv -path $out\$g.csv -NoTypeInformation

$g = "Group Policy Creator Owners"
Get-ADGroupMember -identity  $g | select objectClass,SamAccountName,name,distinguishedName |
Export-csv -path $out\$g.csv -NoTypeInformation


Import-Module ActiveDirectory

$out = $env:HOMEDRIVE + $env:HOMEPATH + "\OSTK"
if (-not (Test-path -Path $out -PathType Container )) {
   New-Item -ItemType Directory 
}
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

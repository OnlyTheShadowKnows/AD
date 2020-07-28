# (c) 2020 BlueTeamHandbook.com Don Murdoch

Import-Module ActiveDirectory

New-Item c:\OTSK

Get-ADGroupMember -identity "Domain Admins" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path c:\OTSK\Groupmembers.csv -NoTypeInformation
Get-ADGroupMember -identity "Enterprise Admins" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path c:\OTSK\Groupmembers.csv -NoTypeInformation -append
Get-ADGroupMember -identity "Schema Admins" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path c:\OTSK\Groupmembers.csv -NoTypeInformation -append
Get-ADGroupMember -identity "Account Operators" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path c:\OTSK\Groupmembers.csv -NoTypeInformation -append
Get-ADGroupMember -identity "Backup Operators" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path c:\OTSK\Groupmembers.csv -NoTypeInformation -append
Get-ADGroupMember -identity "Group Policy Creator Owners" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path c:\OTSK\Groupmembers.csv -NoTypeInformation -append

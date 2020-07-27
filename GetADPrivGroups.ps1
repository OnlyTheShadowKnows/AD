# (c) 2020 BlueTeamHandbook.com Don Murdoch

Get-ADGroupMember -identity "Domain Admins" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path C:\tmp\Groupmembers.csv -NoTypeInformatin
Get-ADGroupMember -identity "Enterprise Admins" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path C:\tmp\Groupmembers.csv -NoTypeInformatin -append
Get-ADGroupMember -identity "Schema Admins" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path C:\tmp\Groupmembers.csv -NoTypeInformatin -append
Get-ADGroupMember -identity "Account Operators" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path C:\tmp\Groupmembers.csv -NoTypeInformatin -append
Get-ADGroupMember -identity "Backup Operators" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path C:\tmp\Groupmembers.csv -NoTypeInformatin -append
Get-ADGroupMember -identity "Group Policy Creator Owners" | select objectClass,SamAccountName,name,distinguishedName | Export-csv -path C:\tmp\Groupmembers.csv -NoTypeInformatin -append

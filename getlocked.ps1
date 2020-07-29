# $sb = "CN=Users,dc=ad,dc=local"
Import-Module ActiveDirectory
Get-ADUser -filter 'Enabled -eq $False' | select SamAccountName, DistinguishedName

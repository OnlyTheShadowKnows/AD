# (C) 2020 BlueTeamHandbook.com Don Murdoch
Import-Module ActiveDirectory
(Get-ADUser -Filter *).Count 
(Get-ADGroup -Filter *).Count
(Get-ADComputer -Filter *).Count

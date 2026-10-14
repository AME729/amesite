$destPath = "$env:LOCALAPPDATA\Programs\MinGit"
if (-not (Test-Path "$destPath\cmd\git.exe")) {
    $zipPath = "$env:TEMP\mingit.zip"
    Write-Host "Downloading MinGit..."
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri "https://github.com/git-for-windows/git/releases/download/v2.44.0.windows.1/MinGit-2.44.0-64-bit.zip" -OutFile $zipPath
    Write-Host "Extracting MinGit to $destPath..."
    New-Item -ItemType Directory -Path $destPath -Force | Out-Null
    Expand-Archive -Path $zipPath -DestinationPath $destPath -Force
    Remove-Item $zipPath -ErrorAction SilentlyContinue
}

$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
$gitCmd = "$destPath\cmd"
$ghDir = "C:\Program Files\GitHub CLI"

if ($userPath -notlike "*$gitCmd*") {
    [Environment]::SetEnvironmentVariable("Path", "$userPath;$gitCmd;$ghDir", "User")
    Write-Host "Updated User PATH with MinGit and GitHub CLI"
}

& "$destPath\cmd\git.exe" --version

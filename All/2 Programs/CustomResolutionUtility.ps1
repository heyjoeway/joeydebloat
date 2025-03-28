# Check if running as administrator
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch the script with administrative privileges
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

# Define paths
$tempDir = [System.IO.Path]::GetTempPath()
$zipFile = Join-Path $tempDir "cru-1.5.2.zip"
$cruDir = "C:\Program Files\CRU"
$shortcutPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Custom Resolution Utility.lnk"

try {
    # Download CRU zip file
    Write-Host "Downloading CRU..."
    Invoke-WebRequest -Uri "https://www.monitortests.com/download/cru/cru-1.5.2.zip" -OutFile $zipFile

    # Create CRU directory and extract files
    Write-Host "Installing CRU..."
    New-Item -Path $cruDir -ItemType Directory -Force | Out-Null
    Expand-Archive -Path $zipFile -DestinationPath $cruDir -Force

    # Create shortcut
    Write-Host "Creating shortcut..."
    $WshShell = New-Object -ComObject WScript.Shell
    $Shortcut = $WshShell.CreateShortcut($shortcutPath)
    $Shortcut.TargetPath = "$cruDir\CRU.exe"
    $Shortcut.Save()

    Write-Host "Installation complete!"
}
catch {
    Write-Error "Installation failed: $_"
    exit 1
}
finally {
    # Cleanup
    if (Test-Path $zipFile) {
        Remove-Item $zipFile -Force
    }
}

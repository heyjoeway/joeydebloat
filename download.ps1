# Check for admin
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Warning "Please run this script as an administrator."
    exit
}

Write-Host "Please see https://github.com/heyjoeway/joeydebloat for details on what this script does."
Write-Host "Press Enter to continue..."
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

cd ~
Set-ExecutionPolicy Bypass -Scope Process -Force
Write-Host "Installing Chocolatey"
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Installing Python 3.10 and Git"
choco install python310 --accept-license -y
choco install git --accept-license -y --params "'/Editor:Notepad'"

# Reload Path environment variable
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
Write-Host "Installing miniwindeploy"
python -m pip install git+https://github.com/heyjoeway/miniwindeploy
Write-Host "Downloading joeydebloat"
git clone --recurse-submodules https://github.com/heyjoeway/joeydebloat

cd joeydebloat
explorer .
@echo off

echo --- Remove "Xbox Live in-game experience" app
:: Uninstall 'Microsoft.Xbox.TCUI' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Xbox.TCUI' | Remove-AppxPackage"
:: Mark 'Microsoft.Xbox.TCUI' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Xbox.TCUI_8wekyb3d8bbwe" /f
@echo off

echo --- Remove "Mobile Plans" app
:: Uninstall 'Microsoft.OneConnect' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.OneConnect' | Remove-AppxPackage"
:: Mark 'Microsoft.OneConnect' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.OneConnect_8wekyb3d8bbwe" /f
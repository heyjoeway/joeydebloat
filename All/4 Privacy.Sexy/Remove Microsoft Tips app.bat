@echo off

echo --- Remove "Microsoft Tips" app
:: Uninstall 'Microsoft.Getstarted' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Getstarted' | Remove-AppxPackage"
:: Mark 'Microsoft.Getstarted' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Getstarted_8wekyb3d8bbwe" /f
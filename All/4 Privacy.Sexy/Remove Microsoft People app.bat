@echo off

echo --- Remove "Microsoft People" app
:: Uninstall 'Microsoft.People' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.People' | Remove-AppxPackage"
:: Mark 'Microsoft.People' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.People_8wekyb3d8bbwe" /f
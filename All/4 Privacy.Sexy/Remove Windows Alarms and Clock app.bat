@echo off

echo --- Remove "Windows Alarms and Clock" app
:: Uninstall 'Microsoft.WindowsAlarms' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.WindowsAlarms' | Remove-AppxPackage"
:: Mark 'Microsoft.WindowsAlarms' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.WindowsAlarms_8wekyb3d8bbwe" /f
@echo off

echo --- Remove "OneNote" app
:: Uninstall 'Microsoft.Office.OneNote' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.Office.OneNote' | Remove-AppxPackage"
:: Mark 'Microsoft.Office.OneNote' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.Office.OneNote_8wekyb3d8bbwe" /f
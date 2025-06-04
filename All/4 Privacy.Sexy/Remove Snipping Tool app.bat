@echo off

echo --- Remove "Snipping Tool" app
:: Uninstall 'Microsoft.ScreenSketch' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.ScreenSketch' | Remove-AppxPackage"
:: Mark 'Microsoft.ScreenSketch' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.ScreenSketch_8wekyb3d8bbwe" /f
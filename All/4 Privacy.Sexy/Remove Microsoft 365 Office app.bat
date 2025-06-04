@echo off

echo --- Remove "Microsoft 365 (Office)" app
:: Uninstall 'Microsoft.MicrosoftOfficeHub' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftOfficeHub' | Remove-AppxPackage"
:: Mark 'Microsoft.MicrosoftOfficeHub' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe" /f
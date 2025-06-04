@echo off

echo --- Remove "Microsoft Solitaire Collection" app
:: Uninstall 'Microsoft.MicrosoftSolitaireCollection' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.MicrosoftSolitaireCollection' | Remove-AppxPackage"
:: Mark 'Microsoft.MicrosoftSolitaireCollection' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe" /f
@echo off

echo --- Remove "Windows Web Experience Pack" (breaks Widgets)
:: Uninstall 'MicrosoftWindows.Client.WebExperience' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'MicrosoftWindows.Client.WebExperience' | Remove-AppxPackage"
:: Mark 'MicrosoftWindows.Client.WebExperience' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy" /f
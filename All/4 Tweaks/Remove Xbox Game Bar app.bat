@echo off

echo --- Remove "Xbox Game Bar" app
:: Uninstall 'Microsoft.XboxGamingOverlay' Microsoft Store app.
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage 'Microsoft.XboxGamingOverlay' | Remove-AppxPackage"
:: Mark 'Microsoft.XboxGamingOverlay' as deprovisioned to block reinstall during Windows updates.
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\Deprovisioned\Microsoft.XboxGamingOverlay_8wekyb3d8bbwe" /f

:: https://www.reddit.com/r/Windows11/comments/zwmeew/is_there_a_way_to_disable_this_blasted_msgamebar/
reg add HKCR\ms-gamebar /f /ve /d URL:ms-gamebar 2>&1 >''

reg add HKCR\ms-gamebar /f /v "URL Protocol" /d "" 2>&1 >''

reg add HKCR\ms-gamebar /f /v "NoOpenWith" /d "" 2>&1 >''

reg add HKCR\ms-gamebar\shell\open\command /f /ve /d "\\"$env:SystemRoot\System32\systray.exe\"" 2>&1 >''

reg add HKCR\ms-gamebarservices /f /ve /d URL:ms-gamebarservices 2>&1 >''

reg add HKCR\ms-gamebarservices /f /v "URL Protocol" /d "" 2>&1 >''

reg add HKCR\ms-gamebarservices /f /v "NoOpenWith" /d "" 2>&1 >''

reg add HKCR\ms-gamebarservices\shell\open\command /f /ve /d "\\"$env:SystemRoot\System32\systray.exe\"" 2>&1 >''
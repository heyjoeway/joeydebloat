@echo off

echo --- Disable automatic installation of Windows updates without user consent
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t "REG_DWORD" /d "2" /f
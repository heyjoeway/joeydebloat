@echo off

echo --- Disable enabling of Cortana
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "CanCortanaBeEnabled" /t REG_DWORD /d 0 /f
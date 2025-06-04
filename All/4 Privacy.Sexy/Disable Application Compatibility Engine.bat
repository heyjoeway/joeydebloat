@echo off

echo --- Disable Application Compatibility Engine
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableEngine" /t REG_DWORD /d "1" /f
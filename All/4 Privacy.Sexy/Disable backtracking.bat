@echo off

echo --- Disable backtracking
reg add "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" /v "TurnOffBackstack" /t REG_DWORD /d 1 /f
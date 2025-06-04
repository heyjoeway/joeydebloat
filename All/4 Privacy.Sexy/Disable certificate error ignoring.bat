@echo off

echo --- Disable certificate error ignoring
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v "PreventIgnoreCertErrors" /t REG_DWORD /d 1 /f
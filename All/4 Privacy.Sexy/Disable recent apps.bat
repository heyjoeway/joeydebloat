@echo off

echo --- Disable recent apps
reg add "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" /v "DisableRecentApps" /t REG_DWORD /d 1 /f
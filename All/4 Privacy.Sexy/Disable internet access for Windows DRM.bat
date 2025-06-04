@echo off

echo --- Disable internet access for Windows DRM
reg add "HKLM\SOFTWARE\Policies\Microsoft\WMDRM" /v "DisableOnline" /t REG_DWORD /d 1 /f
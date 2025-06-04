@echo off

echo --- Disable automatic installation of Edge (Chromium)
reg add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /t REG_DWORD /d 1 /f
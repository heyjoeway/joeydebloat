@echo off

echo --- Minimize daily quick scan frequency
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "QuickScanInterval" /t REG_DWORD /d "24" /f
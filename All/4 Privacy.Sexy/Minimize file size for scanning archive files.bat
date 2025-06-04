@echo off

echo --- Minimize file size for scanning archive files
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Scan" /v "ArchiveMaxSize" /t REG_DWORD /d "1" /f
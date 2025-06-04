@echo off

echo --- Disable Cortana's history display
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "HistoryViewEnabled" /t REG_DWORD /d 0 /f
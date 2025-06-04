@echo off

echo --- Disable Cortana listening to commands on Windows key + C
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "VoiceShortcut" /t REG_DWORD /d 0 /f
@echo off

echo --- Disable sending Windows Media Player statistics
reg add "HKCU\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d 0 /f
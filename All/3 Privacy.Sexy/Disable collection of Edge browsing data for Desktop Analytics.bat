@echo off

echo --- Disable collection of Edge browsing data for Desktop Analytics
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MicrosoftEdgeDataOptIn" /t REG_DWORD /d 0 /f
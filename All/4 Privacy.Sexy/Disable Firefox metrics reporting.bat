@echo off

echo --- Disable Firefox metrics reporting
reg add HKLM\SOFTWARE\Policies\Mozilla\Firefox /v DisableTelemetry /t REG_DWORD /d 1 /f
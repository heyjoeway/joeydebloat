@echo off

echo --- Disable sending Watson events
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableGenericRePorts" /t REG_DWORD /d 1 /f
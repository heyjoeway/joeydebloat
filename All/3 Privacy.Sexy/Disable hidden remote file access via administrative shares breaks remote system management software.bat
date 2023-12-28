@echo off

echo --- Disable hidden remote file access via administrative shares (breaks remote system management software)
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "AutoShareWks" /t REG_DWORD /d 0 /f
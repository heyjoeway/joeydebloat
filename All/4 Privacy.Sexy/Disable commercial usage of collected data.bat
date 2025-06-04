@echo off

echo --- Disable commercial usage of collected data
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d 0 /f
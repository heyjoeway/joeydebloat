@echo off

echo --- Disable default browser agent reporting
reg add HKLM\SOFTWARE\Policies\Mozilla\Firefox /v DisableDefaultBrowserAgent /t REG_DWORD /d 1 /f
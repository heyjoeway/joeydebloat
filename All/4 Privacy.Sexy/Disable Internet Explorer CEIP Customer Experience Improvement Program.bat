@echo off

echo --- Disable Internet Explorer CEIP (Customer Experience Improvement Program)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d 0 /f
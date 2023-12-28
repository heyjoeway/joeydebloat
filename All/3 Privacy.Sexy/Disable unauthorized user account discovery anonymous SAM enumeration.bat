@echo off

echo --- Disable unauthorized user account discovery (anonymous SAM enumeration)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "RestrictAnonymousSAM" /t REG_DWORD /d 1 /f
@echo off

echo --- Disable startup check for latest virus and spyware security intelligence (signature)
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Signature Updates" /v "UpdateOnStartUp" /t REG_DWORD /d 1 /f
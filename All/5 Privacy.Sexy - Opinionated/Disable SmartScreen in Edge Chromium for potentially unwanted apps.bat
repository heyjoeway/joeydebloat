@echo off

echo --- Disable SmartScreen in Edge (Chromium) for potentially unwanted apps
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SmartScreenPuaEnabled" /t REG_DWORD /d "0" /f
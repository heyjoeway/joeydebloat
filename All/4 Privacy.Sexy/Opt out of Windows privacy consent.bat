@echo off

echo --- Opt out of Windows privacy consent
reg add "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f
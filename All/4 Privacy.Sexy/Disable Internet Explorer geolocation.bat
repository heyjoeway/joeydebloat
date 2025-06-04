@echo off

echo --- Disable Internet Explorer geolocation
reg add "HKCU\Software\Policies\Microsoft\Internet Explorer\Geolocation" /v "PolicyDisableGeolocation" /t REG_DWORD /d 1 /f
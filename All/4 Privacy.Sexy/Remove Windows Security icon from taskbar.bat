@echo off

echo --- Remove "Windows Security" icon from taskbar
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f 2>nul
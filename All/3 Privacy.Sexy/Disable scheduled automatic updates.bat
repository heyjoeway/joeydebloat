@echo off

echo --- Disable scheduled automatic updates
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallTime" /f 2>nul
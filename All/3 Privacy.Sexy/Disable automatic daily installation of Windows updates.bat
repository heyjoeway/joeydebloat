@echo off

echo --- Disable automatic daily installation of Windows updates
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallDay" /f 2>nul
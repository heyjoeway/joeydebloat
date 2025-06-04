@echo off

echo --- Remove "Windows Fax and Scan" capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Print.Fax.Scan*' | Remove-WindowsCapability -Online"
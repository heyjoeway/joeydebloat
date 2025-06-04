@echo off

echo --- Remove "XPS Viewer" capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'XPS.Viewer*' | Remove-WindowsCapability -Online"
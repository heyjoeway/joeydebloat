@echo off

echo --- Remove "Internet Explorer 11" capability
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'Browser.InternetExplorer*' | Remove-WindowsCapability -Online"
@echo off

echo --- Remove "OneSync" capability (breaks Mail, People, and Calendar)
PowerShell -ExecutionPolicy Unrestricted -Command "Get-WindowsCapability -Online -Name 'OneCoreUAP.OneSync*' | Remove-WindowsCapability -Online"
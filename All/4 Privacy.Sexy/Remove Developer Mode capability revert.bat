@echo off

echo --- Remove "Developer Mode" capability (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "$capability = Get-WindowsCapability -Online -Name 'Tools.DeveloperMode.Core*'; Add-WindowsCapability -Name "^""$capability.Name"^"" -Online"
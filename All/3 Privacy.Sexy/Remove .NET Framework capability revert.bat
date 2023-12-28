@echo off

echo --- Remove ".NET Framework" capability (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "$capability = Get-WindowsCapability -Online -Name 'NetFX3*'; Add-WindowsCapability -Name "^""$capability.Name"^"" -Online"
@echo off

echo --- Remove "OpenSSH client" capability (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "$capability = Get-WindowsCapability -Online -Name 'OpenSSH.Client*'; Add-WindowsCapability -Name "^""$capability.Name"^"" -Online"
@echo off

echo --- Remove "PowerShell ISE" capability (revert)
PowerShell -ExecutionPolicy Unrestricted -Command "$capability = Get-WindowsCapability -Online -Name 'Microsoft.Windows.PowerShell.ISE*'; Add-WindowsCapability -Name "^""$capability.Name"^"" -Online"
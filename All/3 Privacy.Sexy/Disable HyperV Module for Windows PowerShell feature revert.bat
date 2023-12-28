@echo off

echo --- Disable "Hyper-V Module for Windows PowerShell" feature (revert)
dism /Online /Enable-Feature /FeatureName:"Microsoft-Hyper-V-Management-PowerShell" /NoRestart
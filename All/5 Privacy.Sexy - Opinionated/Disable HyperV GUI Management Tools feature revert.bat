@echo off

echo --- Disable "Hyper-V GUI Management Tools" feature (revert)
dism /Online /Enable-Feature /FeatureName:"Microsoft-Hyper-V-Management-Clients" /NoRestart
@echo off

echo --- Disable "Hyper-V Management Tools" feature (revert)
dism /Online /Enable-Feature /FeatureName:"Microsoft-Hyper-V-Tools-All" /NoRestart
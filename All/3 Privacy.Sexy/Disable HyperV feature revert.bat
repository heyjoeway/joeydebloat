@echo off

echo --- Disable "Hyper-V" feature (revert)
dism /Online /Enable-Feature /FeatureName:"Microsoft-Hyper-V-All" /NoRestart
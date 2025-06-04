@echo off

echo --- Disable "TFTP Client" feature (revert)
dism /Online /Enable-Feature /FeatureName:"TFTP" /NoRestart
@echo off

echo --- Disable "Legacy Components" feature (revert)
dism /Online /Enable-Feature /FeatureName:"LegacyComponents" /NoRestart
@echo off

echo --- Disable "Direct Play" feature (revert)
dism /Online /Enable-Feature /FeatureName:"DirectPlay" /NoRestart
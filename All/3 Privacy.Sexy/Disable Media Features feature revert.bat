@echo off

echo --- Disable "Media Features" feature (revert)
dism /Online /Enable-Feature /FeatureName:"MediaPlayback" /NoRestart
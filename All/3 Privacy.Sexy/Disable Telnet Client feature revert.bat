@echo off

echo --- Disable "Telnet Client" feature (revert)
dism /Online /Enable-Feature /FeatureName:"TelnetClient" /NoRestart
@echo off

echo --- Disable "XPS Viewer" feature
dism /Online /Disable-Feature /FeatureName:"Xps-Foundation-Xps-Viewer" /NoRestart
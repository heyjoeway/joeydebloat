@echo off

echo --- Disable "XPS Services" feature
dism /Online /Disable-Feature /FeatureName:"Printing-XPSServices-Features" /NoRestart
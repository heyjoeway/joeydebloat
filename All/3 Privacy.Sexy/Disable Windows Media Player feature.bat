@echo off

echo --- Disable "Windows Media Player" feature
dism /Online /Disable-Feature /FeatureName:"WindowsMediaPlayer" /NoRestart
@echo off

echo --- Disable Diagnostics Hub log collection
reg delete "HKLM\Software\Microsoft\VisualStudio\DiagnosticsHub" /v "LogLevel" /f 2>nul
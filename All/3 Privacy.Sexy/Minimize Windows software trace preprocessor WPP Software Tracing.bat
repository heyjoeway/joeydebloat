@echo off

echo --- Minimize Windows software trace preprocessor (WPP Software Tracing)
reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Reporting" /v "WppTracingLevel" /t REG_DWORD /d 1 /f
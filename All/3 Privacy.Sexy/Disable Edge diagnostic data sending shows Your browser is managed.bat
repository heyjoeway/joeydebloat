@echo off

echo --- Disable Edge diagnostic data sending (shows "Your browser is managed")
:: Disabling metrics and site info sending for Edge v88 ≥
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "MetricsReportingEnabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "SendSiteInfoToImproveServices" /t REG_DWORD /d 0 /f
:: Disabling diagnostic data (replacing metrics and site info sending since Edge v89 ≤)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DiagnosticData" /t REG_DWORD /d 0 /f
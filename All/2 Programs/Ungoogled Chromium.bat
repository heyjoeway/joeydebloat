choco install ungoogled-chromium --accept-license -y
copy "%~dp0initial_preferences" "C:\ProgramData\chocolatey\lib\ungoogled-chromium\tools\ungoogled-chromium\"
powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Ungoogled Chromium.lnk');$s.TargetPath='C:\ProgramData\chocolatey\lib\ungoogled-chromium\tools\ungoogled-chromium\chrome.exe';$s.Save()"

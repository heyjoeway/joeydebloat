choco install nirlauncher --accept-license -y
powershell -Command "$s=(New-Object -COM WScript.Shell).CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\NirLauncher.lnk');$s.TargetPath='C:\ProgramData\chocolatey\bin\nirlauncher.exe';$s.Save()"

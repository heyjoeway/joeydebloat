# joeydebloat
My personal config for miniwindeploy.

# Disclaimer

This config will probably do a lot of stuff you don't agree with, including but not limited to:

- Running unsigned Powershell scripts
- Activation via Microsoft Activation Scripts
- Uninstalling a bucnh of built-in software
- Installing my preferred programs

The way I've set up the auto-download script allows you to tweak this config before running by deleting tweaks you don't like. (You can also fork this repo.) I will be accepting suggestions, but ultimately what gets added here is up to my personal preference. I will not be managing a standard "community preset".

# Other Tips

If you're trying to install Windows 11 on an unsupported machine, check out the following repos:
- <https://github.com/JosephM101/Force-Windows-11-Install>
- <https://github.com/ArkaneDev/WinPass11>
- <https://github.com/rcmaehl/WhyNotWin11>

When installing Windows 11, stop when you get to the OOBE (where you connect to the network, create an account, etc.) and do the following:

- Press Shift+F10 to open a command prompt.
- Type `oobe\bypassnro` and press enter.
- Wait for the PC to reboot.

You can now skip creating a Microsoft account as long as you're disconnected from the internet. If you acccidentally connected to the internet, you'll need to use this command:
```
ipconfig /release
```
And after logging in:
```
ipconfig /renew
```
to reconnect.

# Getting Started

Make sure to run Windows Update first. You'll need winget, which is only included with newer releases.

In an admin Powershell prompt:
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/heyjoeway/joeydebloat/main/download.ps1'))
```

This will install Python 3 and Git, then clone this repo and open it in File Explorer. From there, change whatever scripts you'd like, then open `Start.bat`.

# License
MIT

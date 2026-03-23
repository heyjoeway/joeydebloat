# joeydebloat
A collection of scripts, tweaks, and installers to get Windows set the way I want it as fast as possible. Uses [miniwindeploy](https://github.com/heyjoeway/miniwindeploy) to deploy automatically.

# Disclaimer

This config will probably do a lot of stuff you don't agree with, including but not limited to:

- Running unsigned Powershell scripts
- Activation via Microsoft Activation Scripts
- Disabling Windows Defender and other security features for performance
- Uninstalling a bunch of built-in software
- Installing my preferred programs

The way I've set up the auto-download script allows you to tweak this config before running by simply deleting tweaks you don't like. (You can also fork this repo.) I will be accepting suggestions, but ultimately what gets added here is up to my personal preference. I will not be managing a standard "community preset".

# Getting Started

In an admin Powershell prompt:
```
irm http://jojudge.com/joeydebloat | iex
```

This will install [Chocolatey](https://chocolatey.org/install), Python 3, Git, and the [miniwindeploy](https://github.com/heyjoeway/miniwindeploy) Python package. It then clones this repo and opens it in File Explorer. From there, change whatever scripts you'd like, then open `Start.bat`.

# Other Tips

If you're trying to install Windows 11 on an unsupported machine, check out the following repos:
- <https://github.com/JosephM101/Force-Windows-11-Install>
- <https://github.com/rcmaehl/WhyNotWin11>

Use the "Previous Version of Setup" when you boot the Windows installer. It is significantly faster.

When installing Windows 11, stop when you get to the OOBE (where you connect to the network, create an account, etc.) and do the following:

- Press Shift+F10 to open a command prompt.
- Type `start ms-cxh:localonly` and press enter.
- Create a local account using the window that pops up.

You can skip giving your account a password in the OOBE if you want to also skip creating the security questions. If you do though, **set a password before running the debloater.** Chocolatey (used to install programs from this repo) and RustDesk will sometimes hang up or malfunction when there's not a password.

# License
MIT

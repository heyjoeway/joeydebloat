cd ~
winget install --accept-package-agreements --accept-source-agreements -h --scope machine python3
winget install --accept-package-agreements --accept-source-agreements -h --scope machine git.git
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
python -m pip install git+https://github.com/heyjoeway/miniwindeploy
git clone --recurse-submodules https://github.com/heyjoeway/joeydebloat
cd joeydebloat
explorer .

cd ~
winget install --accept-package-agreements --accept-source-agreements -h --source winget --scope machine python3
winget install --accept-package-agreements --accept-source-agreements -h --source winget --scope machine git.git
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
python -m pip install git+https://github.com/heyjoeway/miniwindeploy
git clone --recurse-submodules https://github.com/heyjoeway/joeydebloat
cd joeydebloat
explorer .

winget install Python.Python.3.12 astral-sh.uv 7zip.7zip Kitware.CMake Ninja-build.Ninja Neovim.Neovim
$env:Path = [Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [Environment]::GetEnvironmentVariable("Path","User")
uv venv --seed --python 3.12

.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip west

west init .
west update
west zephyr-export
python -m pip install -r zephyr\scripts\requirements.txt

$env:Path += ";C:\Program Files\7-Zip"
west sdk install -t arm-zephyr-eabi


$env:XDG_CONFIG_HOME = "$PWD"
[Environment]::SetEnvironmentVariable("XDG_CONFIG_HOME", "$PWD" , "User")

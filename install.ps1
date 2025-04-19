#requires –RunAsAdministrator

# TODO: multiple file support
New-Item -Force -ItemType HardLink -Path $HOME\.wezterm.lua -Value .wezterm.lua

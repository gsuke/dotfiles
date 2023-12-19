#requires –RunAsAdministrator

New-Item -Force -ItemType HardLink -Path $HOME\.wezterm.lua -Value .wezterm.lua

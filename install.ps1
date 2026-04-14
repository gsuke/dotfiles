#requires –RunAsAdministrator

New-Item -Force -ItemType SymbolicLink -Path $HOME\.wezterm.lua -Target (Get-Item '.\.wezterm.lua').FullName

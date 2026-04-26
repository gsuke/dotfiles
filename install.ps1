#requires –RunAsAdministrator

New-Item -Force -ItemType SymbolicLink -Path $PROFILE -Target (Get-Item '.\Microsoft.PowerShell_profile.ps1').FullName
New-Item -Force -ItemType SymbolicLink -Path $HOME\.wezterm.lua -Target (Get-Item '.\.wezterm.lua').FullName

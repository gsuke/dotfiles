local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

-- OS
local is_windows = wezterm.target_triple == 'x86_64-pc-windows-msvc'
local is_linux = wezterm.target_triple == 'x86_64-unknown-linux-gnu'

-- Font
config.font = wezterm.font('Myrica M')
config.font_size = 13

-- Window
config.window_close_confirmation = 'NeverPrompt'
config.initial_cols = 90
config.initial_rows = 30

if is_linux then
    config.keys = {
        { mods = 'CTRL|SHIFT', key = 't', action = act.SpawnTab 'CurrentPaneDomain' },
        { mods = 'CTRL|SHIFT', key = 'w', action = act { CloseCurrentTab = { confirm = false } } }
    }
end

if is_windows then
    config.keys = {
        { mods = 'CTRL|SHIFT', key = 't', action = act.ShowLauncher },
        { mods = 'CTRL|SHIFT', key = 'w', action = act { CloseCurrentTab = { confirm = false } } }
    }

    local gitbash_path = 'C:/Program Files/Git/bin/bash.exe'

    config.default_prog = { gitbash_path, '-l' }
    config.launch_menu = {
        { label = 'Git Bash',          args = { gitbash_path } },
        { label = 'PowerShell (Core)', args = { 'pwsh' } },
        { label = 'Command Prompt',    args = { 'cmd' } },
        { label = 'WSL',               args = { 'wsl' } }
    }
end

return config

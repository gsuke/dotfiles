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
config.front_end = 'Software'

config.keys = {
    { mods = 'CTRL|SHIFT', key = 'w',         action = act { CloseCurrentTab = { confirm = false } } }, -- タブを閉じる
    { mods = 'CTRL|SHIFT', key = 'UpArrow',   action = act.ScrollByLine(-2) },                          -- 上スクロール
    { mods = 'CTRL|SHIFT', key = 'DownArrow', action = act.ScrollByLine(2) },                           -- 下スクロール
}

if is_linux then
    table.insert(config.keys, { mods = 'CTRL|SHIFT', key = 't', action = act.SpawnTab 'CurrentPaneDomain' })
end

if is_windows then
    table.insert(config.keys, { mods = 'CTRL|SHIFT', key = 't', action = act.ShowLauncher })

    config.default_prog = { 'pwsh', '-l' }
    config.launch_menu = {
        { label = 'PowerShell (Core)', args = { 'pwsh' } },
        { label = 'Git Bash',          args = { 'C:/Program Files/Git/bin/bash.exe' } },
        { label = 'Command Prompt',    args = { 'cmd' } },
        { label = 'WSL',               args = { 'wsl' } }
    }
end

return config

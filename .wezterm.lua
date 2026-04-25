local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

-- Font
local font = 'Myrica M'
config.font = wezterm.font(font)
config.font_size = 18
config.window_frame = {
    font = wezterm.font(font),
    font_size = 16
}

-- Window
config.initial_cols = 90
config.initial_rows = 30
config.window_close_confirmation = 'NeverPrompt'
config.use_ime = true

-- Decoration
config.window_background_opacity = 0.85
config.default_cursor_style = "BlinkingBar"

config.keys = {
    { mods = 'CTRL|SHIFT', key = 't',         action = act.SpawnTab('CurrentPaneDomain') },
    { mods = 'CTRL|SHIFT', key = 'w',         action = act.CloseCurrentTab({ confirm = false }) },
    { mods = 'CTRL|SHIFT', key = 'UpArrow',   action = act.ScrollByLine(-2) },
    { mods = 'CTRL|SHIFT', key = 'DownArrow', action = act.ScrollByLine(2) },
}

-- Linux
if wezterm.target_triple == 'x86_64-unknown-linux-gnu' then
    -- https://github.com/wezterm/wezterm/issues/5103
    config.enable_wayland = false
end

-- Windows
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    config.default_prog = { 'wsl' }
    table.insert(
        config.keys,
        { mods = 'CTRL|SHIFT', key = 'p', action = act.SpawnCommandInNewTab({ args = { 'pwsh' } }) }
    )
end

return config

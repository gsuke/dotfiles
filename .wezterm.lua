local wezterm = require "wezterm"
local act = wezterm.action
local c = wezterm.config_builder()

-- Font
c.font = wezterm.font("Myrica M")
c.font_size = 18

-- Window
c.initial_cols = 90
c.initial_rows = 30
c.window_close_confirmation = "NeverPrompt"
c.use_ime = true

-- Decoration
c.default_cursor_style = "BlinkingBar"
c.window_background_opacity = 0.85

c.keys = {
    { mods = "CTRL|SHIFT", key = "t",         action = act.SpawnTab("CurrentPaneDomain") },
    { mods = "CTRL|SHIFT", key = "w",         action = act.CloseCurrentTab({ confirm = false }) },
    { mods = "CTRL|SHIFT", key = "UpArrow",   action = act.ScrollByLine(-2) },
    { mods = "CTRL|SHIFT", key = "DownArrow", action = act.ScrollByLine(2) },

    -- WSLで~が入力されてしまう問題に対処
    { mods = "",           key = "F14",       action = act.SendString("") },
}

-- Linux
c.enable_wayland = false -- https://github.com/wezterm/wezterm/issues/5103

-- Windows
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    c.default_prog = { "wsl" }
    table.insert(
        c.keys,
        { mods = "CTRL|SHIFT", key = "p", action = act.SpawnCommandInNewTab({ args = { "pwsh" } }) }
    )
end

return c

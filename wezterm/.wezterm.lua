local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_domain = 'WSL:Ubuntu'

-- appearance
config.win32_system_backdrop = 'Acrylic'
config.window_background_opacity = 0.7
config.color_scheme = 'Aura (Gogh)'
-- config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

-- typography
config.font = wezterm.font 'MonoLisa'
config.font_size = 10
config.line_height = 1.1

-- keybinds
config.keys = {
    -- easier paste
    { key = 'v',     mods = 'CTRL',  action = wezterm.action.PasteFrom 'Clipboard' },

    -- easier line jump
    { key = 'Enter', mods = 'SHIFT', action = wezterm.action.SendString '\n' },

    -- new tab
    { key = 't',     mods = 'CTRL',  action = wezterm.action.SpawnTab 'CurrentPaneDomain' },

    -- prev tab
    { key = 'q',     mods = 'CTRL',  action = wezterm.action.ActivateTabRelative(-1) },

    -- next tab
    { key = 'e',     mods = 'CTRL',  action = wezterm.action.ActivateTabRelative(1) },

    -- close pane / tab
    { key = 'w',     mods = 'CTRL',  action = wezterm.action.CloseCurrentPane { confirm = false } },

    -- split down
    { key = 's',     mods = 'CTRL',  action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },

    -- split right
    { key = 'd',     mods = 'CTRL',  action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },

    -- zoom
    { key = 'r',     mods = 'CTRL',  action = wezterm.action.TogglePaneZoomState },
}

return config

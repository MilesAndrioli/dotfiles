local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_domain = 'WSL:Ubuntu'

config.win32_system_backdrop = 'Acrylic'
config.window_background_opacity = 0.7
config.color_scheme = 'Catppuccin Mocha'
-- config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font 'MonoLisa'
config.font_size = 10
config.line_height = 1.1

config.window_padding = {
    top = '1cell',
    bottom = '1cell',
    left = '2cell',
    right = '2cell',
}

config.keys = {
    {
        key = 't',
        mods = 'CTRL',
        action = wezterm.action.SpawnTab 'CurrentPaneDomain',
    },
    {
        key = 'w',
        mods = 'CTRL',
        action = wezterm.action.CloseCurrentTab { confirm = false },
    },
    {
        key = 'e',
        mods = 'CTRL',
        action = wezterm.action.ActivateTabRelative(1)
    },
    {
        key = 'q',
        mods = 'CTRL',
        action = wezterm.action.ActivateTabRelative(-1),
    },
    {
        key = 'v',
        mods = 'CTRL',
        action = wezterm.action.PasteFrom 'Clipboard',
    },
    {
        key = 'Enter',
        mods = 'SHIFT',
        action = wezterm.action.SendString '\n'
    },
}

return config

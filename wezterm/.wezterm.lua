local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_domain = 'WSL:Ubuntu'

config.win32_system_backdrop = 'Acrylic'
config.window_background_opacity = 0.6
config.color_scheme = 'Catppuccin Mocha'
-- config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font 'MonoLisa'
config.font_size = 10
config.line_height = 1.2

config.window_padding = {
    left = '1cell',
    right = '1cell',
    top = '0.5cell',
    bottom = '0.5cell',
}


config.keys = {
    { key = 't', mods = 'CTRL', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
    { key = 'w', mods = 'CTRL', action = wezterm.action.CloseCurrentTab { confirm = false } },
    { key = 'e', mods = 'CTRL', action = wezterm.action.ActivateTabRelative(1) },
    { key = 'q', mods = 'CTRL', action = wezterm.action.ActivateTabRelative(-1) },

    { key = 'v', mods = 'CTRL', action = wezterm.action.PasteFrom 'Clipboard' },
    {
        key = 'Enter',
        mods = 'SHIFT',
        action = wezterm.action.SendString '\n'
    },
}

return config

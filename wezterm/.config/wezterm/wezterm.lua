local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.initial_cols = 160
config.initial_rows = 48

-- window config
config.window_background_opacity = 1.0
config.macos_window_background_blur = 0

-- window padding config
local padding = {
    left = '1cell',
    right = '1cell',
    top = '0.5cell',
    bottom = '0.5cell'
}

-- change padding config when neovim is running
wezterm.on('update-status', function(window, pane)
    local overrides = window:get_config_overrides() or {}
    if string.find(pane:get_title(), '^nvim.*') then
        overrides.window_padding = {
            left = 0,
            right = 0,
            top = 0,
            bottom = 0
        }
    else
        overrides.window_padding = padding
    end
    window:set_config_overrides(overrides)
end)

-- font config
config.font = wezterm.font 'FiraMono Nerd Font Mono'
config.font_size = 18.0

config.use_fancy_tab_bar = true
config.enable_tab_bar = true
config.tab_bar_at_bottom = true
config.max_fps = 240
config.animation_fps = 60

-- color theme config
config.color_scheme = 'Malcak'
config.use_fancy_tab_bar = true

-- tab bar config
config.window_frame = {
    font = wezterm.font {
        family = 'Roboto',
        weight = 'Bold'
    },
    font_size = 16.0,
    active_titlebar_bg = '#333333',
    inactive_titlebar_bg = '#333333'
}

-- keybinding mods
local action = wezterm.action
config.keys = {{
    mods = "OPT",
    key = "LeftArrow",
    action = action.SendKey({
        mods = "ALT",
        key = "b"
    })
}, {
    mods = "OPT",
    key = "RightArrow",
    action = action.SendKey({
        mods = "ALT",
        key = "f"
    })
}, {
    mods = "CMD",
    key = "LeftArrow",
    action = action.SendKey({
        mods = "CTRL",
        key = "a"
    })
}, {
    mods = "CMD",
    key = "RightArrow",
    action = action.SendKey({
        mods = "CTRL",
        key = "e"
    })
}, {
    mods = "CMD",
    key = "Backspace",
    action = action.SendKey({
        mods = "CTRL",
        key = "u"
    })
}}

return config

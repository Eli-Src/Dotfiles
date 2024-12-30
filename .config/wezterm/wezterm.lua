local wezterm = require("wezterm")

local color_scheme_name = "OneDark (base16)"
local color_scheme = wezterm.color.get_builtin_schemes()[color_scheme_name]
color_scheme.background = "#232326"

return {
    font_size = 19,
    font = wezterm.font("JetBrainsMono Nerd Font Mono"),
    -- font = wezterm.font("Cascadia Mono NF"),
    harfbuzz_features = { "calt=0", "clig=0", "liga=0" }, -- disbale ligeratures
    scrollback_lines = 10000,
    audible_bell = "Disabled",
    adjust_window_size_when_changing_font_size = false,
    enable_tab_bar = false,
    window_decorations = "RESIZE",
    window_close_confirmation = "NeverPrompt",
    color_schemes = {
        [color_scheme_name] = color_scheme -- override color scheme
    },
    color_scheme =  color_scheme_name,
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    },
    keys = {
        { key = "Backspace", mods = "CMD", action = wezterm.action { SendString = "\x15" } },
        { key = "LeftArrow", mods = "CMD", action = wezterm.action { SendString = "\x1bOH" } },
        { key = "RightArrow", mods = "CMD", action = wezterm.action { SendString = "\x1bOF" } },
        { key = "LeftArrow", mods = "OPT", action = wezterm.action { SendString = "\x1b[1;5D" } },
        { key = "RightArrow", mods = "OPT", action = wezterm.action { SendString = "\x1b[1;5C" } },
    },
}

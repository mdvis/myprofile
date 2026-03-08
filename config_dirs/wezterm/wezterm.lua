local wezterm = require("wezterm")

return {
    -- window
    window_background_opacity = 0.85,
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },

    initial_cols = 200,
    initial_rows = 200,

    enable_tab_bar = false,

    -- font
    font = wezterm.font_with_fallback({
        "SauceCodePro Nerd Font Mono",
        "霞鹜文楷等宽",
    }),
    font_size = 16.0,

    -- shell
    default_prog = {
        "/usr/local/bin/tmux",
    },

    -- cursor
    default_cursor_style = "BlinkingBlock",

    -- color
    color_scheme = "Catppuccin Mocha",
}

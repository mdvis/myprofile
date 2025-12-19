local wezterm = require("wezterm")

return {
    color_scheme = "Catppuccin Mocha",

    font = wezterm.font({
        family = "SMS",
        weight = "Regular",
        stretch = "Normal",
        style = "Normal",
    }),
    font_size = 16.0,

    default_prog = {
        "/opt/homebrew/bin/tmux",
    },

    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    window_background_opacity = 0.95,

    macos_window_background_blur = 10,

    default_cursor_style = "BlinkingBlock",

    initial_cols = 200,
    initial_rows = 200,

    enable_tab_bar = false,
}

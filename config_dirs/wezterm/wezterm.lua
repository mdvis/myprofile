local wezterm = require("wezterm")

return {
    color_scheme = "Catppuccin Mocha",

    font = wezterm.font({
        family = "SMS",
        weight = "Regular",
        stretch = "Normal",
        style = "Normal",
    }),
    font_size = 14.0,

    default_prog = {
        "/opt/homebrew/bin/tmux",
    },

    window_background_opacity = 0.95,
    macos_window_background_blur = 10,

    default_cursor_style = "BlinkingBlock",

    enable_tab_bar = false,
}

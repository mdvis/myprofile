local wezterm = require("wezterm")
local home = os.getenv("HOME")

return {
    -- color_scheme = "carbonfox",
    color_scheme = "duskfox",
    -- color_scheme = "GruvboxDark",
    -- color_scheme = "Kanagawa Dragon (Gogh)",
    -- color_scheme = "nightfox",
    -- color_scheme = "terafox",

    font = wezterm.font_with_fallback({
        "Source Code Pro",
        "Maple Mono CN",
        "Symbols Nerd Font",
    }),

    font_size = 14.0,

    default_prog = { home .. "/.local/bin/tmux" },
}
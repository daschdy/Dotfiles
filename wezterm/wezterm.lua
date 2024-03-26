local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Moonfly (Gogh)"
config.term = "xterm-256color"
config.window_background_opacity = 1.0
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 12.0
config.line_height = 1.25

config.enable_tab_bar = false
config.enable_scroll_bar = false
config.scrollback_lines = 10000
config.window_decorations = "RESIZE"

return config

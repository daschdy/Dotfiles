local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config.color_scheme = "Moonfly (Gogh)"
config.term = "xterm-256color"
config.window_background_opacity = 1
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 12.5
config.line_height = 1.0

config.enable_tab_bar = false
config.enable_scroll_bar = false
config.scrollback_lines = 10000
config.window_decorations = "RESIZE"

config.window_close_confirmation = "NeverPrompt"

return config

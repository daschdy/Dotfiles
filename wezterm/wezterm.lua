local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux
local act = wezterm.action

-- Window is maximized on startup
wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

config.color_scheme = "Poimandres"

config.term = "xterm-256color"
config.window_background_opacity = 1
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 16.0
config.line_height = 1.3
config.enable_tab_bar = true
config.enable_scroll_bar = false
config.tab_bar_at_bottom = false
config.scrollback_lines = 10000
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"

config.leader = { key = "s", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	-- Create a new tab in the same domain as the current pane.
	-- This is usually what you want.
	{
		key = "t",
		mods = "LEADER",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	-- Close current tab
	{
		key = "w",
		mods = "LEADER",
		action = act.CloseCurrentTab({ confirm = true }),
	},
	-- Switching tabs with vim-keys
	{
		key = "h",
		mods = "LEADER",
		action = act.ActivateTabRelative(-1),
	},
	{
		key = "l",
		mods = "LEADER",
		action = act.ActivateTabRelative(1),
	},
	-- Making Panes und make it like tmux
	{
		key = "%",
		mods = "LEADER",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = '"',
		mods = "LEADER",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "H",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "J",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "K",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "L",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Right"),
	},
}

return config

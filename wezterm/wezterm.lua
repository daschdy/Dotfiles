local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux
local act = wezterm.action

local usedFont = "Anonymous Pro"
local usedFontSize = 18

-- Window is maximized on startup
wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

-- config.color_scheme = "rose-pine"
config.term = "xterm-256color"
config.window_background_opacity = 1
config.font = wezterm.font(usedFont)
config.font_size = usedFontSize
config.line_height = 1.3
config.enable_tab_bar = true
config.enable_scroll_bar = false
config.tab_bar_at_bottom = false
config.scrollback_lines = 10000
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.audible_bell = "Disabled"

config.window_frame = {
	font = wezterm.font({ family = usedFont, weight = "Bold" }),
	font_size = 14.5,
	active_titlebar_bg = "#333333",
	inactive_titlebar_bg = "#333333",
}

config.colors = {
	tab_bar = {
		inactive_tab_edge = "#575757",
	},
}

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

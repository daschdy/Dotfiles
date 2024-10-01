local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux
local act = wezterm.action

-- Window is maximized on startup
wezterm.on("gui-startup", function()
	local _, _, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

-- general settings
config.enable_scroll_bar = false
config.scrollback_lines = 10000
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.audible_bell = "Disabled"
config.adjust_window_size_when_changing_font_size = false
config.default_cursor_style = "BlinkingBar"

-- colorscheme
config.color_scheme = "Tokyo Night (Gogh)"
config.term = "xterm-256color"
config.window_background_opacity = 0.95
config.macos_window_background_blur = 20

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.95,
}

-- Font settings
config.font_size = 14
config.line_height = 1.3
config.font = wezterm.font({ family = "Fira Code", weight = "Regular" })
config.bold_brightens_ansi_colors = true
config.font_rules = {
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({ family = "Maple Mono", weight = "Bold", style = "Italic" }),
	},
	{
		intensity = "Half",
		italic = true,
		font = wezterm.font({ family = "Maple Mono", weight = "DemiBold", style = "Italic" }),
	},
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font({ family = "Maple Mono", style = "Italic" }),
	},
}

-- tab bar settings
local bg = "#000000"
local fg = "#666666"
local ifg = "#5C6370"
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = false
config.window_frame = {
	font = wezterm.font({ family = "Fira Code", weight = "Regular" }),
	font_size = 10,
	active_titlebar_bg = bg,
	inactive_titlebar_bg = bg,
}

config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = bg,
			fg_color = fg,
		},
		inactive_tab = {
			bg_color = bg,
			fg_color = ifg,
		},
		inactive_tab_hover = {
			bg_color = bg,
			fg_color = ifg,
		},
		new_tab = {
			bg_color = bg,
			fg_color = ifg,
		},
		inactive_tab_edge = bg,
	},
}

-- -- make tmux functions
-- config.leader = { key = "s", mods = "CTRL", timeout_milliseconds = 1000 }
-- config.keys = {
-- 	-- Create a new tab in the same domain as the current pane.
-- 	-- This is usually what you want.
-- 	{
-- 		key = "t",
-- 		mods = "LEADER",
-- 		action = act.SpawnTab("CurrentPaneDomain"),
-- 	},
-- 	-- Close current tab
-- 	{
-- 		key = "w",
-- 		mods = "LEADER",
-- 		action = act.CloseCurrentTab({ confirm = true }),
-- 	},
-- 	-- Switching tabs with vim-keys
-- 	{
-- 		key = "H",
-- 		mods = "LEADER",
-- 		action = act.ActivateTabRelative(-1),
-- 	},
-- 	{
-- 		key = "L",
-- 		mods = "LEADER",
-- 		action = act.ActivateTabRelative(1),
-- 	},
-- 	-- Making Panes und make it like tmux
-- 	{
-- 		key = "%",
-- 		mods = "LEADER",
-- 		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
-- 	},
-- 	{
-- 		key = '"',
-- 		mods = "LEADER",
-- 		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
-- 	},
-- 	{
-- 		key = "h",
-- 		mods = "LEADER",
-- 		action = act.ActivatePaneDirection("Left"),
-- 	},
-- 	{
-- 		key = "j",
-- 		mods = "LEADER",
-- 		action = act.ActivatePaneDirection("Down"),
-- 	},
-- 	{
-- 		key = "k",
-- 		mods = "LEADER",
-- 		action = act.ActivatePaneDirection("Up"),
-- 	},
-- 	{
-- 		key = "l",
-- 		mods = "LEADER",
-- 		action = act.ActivatePaneDirection("Right"),
-- 	},
-- }

return config

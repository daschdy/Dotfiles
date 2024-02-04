return {
	"epwalsh/pomo.nvim",
	version = "*",
	lazy = true,
	cmd = { "TimerStart", "TimerRepeat" },
	dependencies = {
		"rcarriga/nvim-notify",
	},
	config = function()
		require("pomo").setup({
			update_interval = 1000,
			notifiers = {
				{
					name = "Default",
					opts = {
						sticky = true,
						title_icon = "󱎫",
						text_icon = "󰄉",
					},
				},
				{ name = "System" },
			},

			timers = {
				Break = {
					{ name = "System" },
				},
			},
		})
	end,
}

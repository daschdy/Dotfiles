return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"lua",
				"markdown",
				"markdown_inline",
				"java",
				"scala",
				"rust",
				"toml",
				"astro",
				"typescript",
				"javascript",
				"tsx",
				"html",
			},
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})
	end,
}

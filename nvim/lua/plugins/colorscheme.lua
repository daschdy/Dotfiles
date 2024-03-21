return {
	{
		-- "Mofiqul/vscode.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		--   require("vscode").setup({
		--     style = "dark",
		--     transparent = false,
		--     italic_comments = true,
		--   })
		--   require("vscode").load()
		--  vim.cmd.colorscheme("vscode")
		-- end,
	},
	{
		-- "oxfist/night-owl.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		--   require("night-owl").setup({
		--     bold = true,
		--     italics = true,
		--     underline = true,
		--     undercurl = true,
		--     transparent_background = false,
		--   })
		--
		--   vim.cmd.colorscheme("night-owl")
		-- end,
	},
	{
		"shatur/neovim-ayu",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.ayu_mirage = false
			vim.cmd.colorscheme("ayu")
		end,
	},
}

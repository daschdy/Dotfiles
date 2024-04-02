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
		-- "shatur/neovim-ayu",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	vim.g.ayu_mirage = false
		-- 	vim.cmd.colorscheme("ayu")
		-- end,
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("moonfly")
		end,
	},
	{
		-- "shaunsingh/nord.nvim",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	vim.cmd.colorscheme("nord")
		-- end,
	},
}

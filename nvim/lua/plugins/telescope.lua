return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		branch = "0.1.x",
		dependencies = {
			{
				"nvim-lua/plenary.nvim",
			},
			{
				"nvim-telescope/telescope-fzy-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{
				"nvim-telescope/telescope-ui-select.nvim",
			},
			{
				"nvim-tree/nvim-web-devicons",
			},
		},
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[ ] Find existing buffers" })
		end,
	},
}

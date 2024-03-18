return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		local formatting = null_ls.builtins.formatting

		null_ls.setup({
			debug = true,
			sources = {
				formatting.stylua,
				formatting.prettier,
				formatting.markdownlint,
				formatting.yapf,
				null_ls.builtins.completion.spell,
			},
		})
	end,
}

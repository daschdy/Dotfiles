return {
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vscode").setup({
      style = "dark",
      transparent = false,
      italic_comments = true,
    })
    require("vscode").load()
    vim.cmd.colorscheme("vscode")
  end,
}

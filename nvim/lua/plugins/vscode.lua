return {
  "Mofiqul/vscode.nvim",
  name = "vscode",
  priority = 1000,
  transparent = true,
  italic_comments = true,
  config = function()
    vim.cmd.colorscheme "vscode"
  end
}

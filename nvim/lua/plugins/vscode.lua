return {
  "Mofiqul/vscode.nvim",
  name = "vscode",
  priority = 1000,
  config = function()
    transparent = true
    italic_comments = true
    vim.cmd.colorscheme "vscode"
  end
}

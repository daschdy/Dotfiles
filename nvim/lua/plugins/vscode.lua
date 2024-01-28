return {
  "Mofiqul/vscode.nvim",
  name = "vscode",
  priority = 1000,
  config = function()
    local c = require("vscode.colors").get_colors()
    require("vscode").setup({
      transparent = true,
      italic_comments = true,
    })
    require("vscode").load()
    vim.cmd.colorscheme "vscode"
  end
}

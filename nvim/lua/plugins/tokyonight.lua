return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "storm",
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
      },
    })

    require("tokyonight").load()
    vim.cmd.colorscheme("tokyonight")
  end,
}

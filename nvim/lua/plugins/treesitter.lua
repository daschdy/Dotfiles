return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "rust",
        "toml",
        "java",
        "astro",
        "tsx",
        "typescript",
        "html",
        "markdown",
        "markdown_inline",
        "scala",
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

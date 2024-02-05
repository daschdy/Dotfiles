return {
  "github/copilot.vim",

  config = function()
    vim.keymap.set("n", "<C-S-z>", ":Copilot enable<CR>", {})
    vim.keymap.set("n", "<C-S-x>", ":Copilot disable<CR>", {})
  end,
}

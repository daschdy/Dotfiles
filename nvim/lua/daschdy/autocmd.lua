-- AUTOCOMMANDS

-- Highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Get the current date YYYY-MM-DD with <leader>dt 
vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'Get the current date YYYY-MM-DD with <leader>dt',
  group = vim.api.nvim_create_augroup('kickstart-get-date', { clear = true }),
  pattern = '*',
  callback = function()
    vim.cmd('nnoremap <leader>dt "=strftime("%Y-%m-%d")<CR>p')
  end,
})

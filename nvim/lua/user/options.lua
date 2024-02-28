-- SETTING OPTIONS --

-- line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- tabs to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Enable auto indenting and set it to spaces
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- Enable smart indenting
vim.opt.breakindent = true

-- Enable incremental searching
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Enable ignorecase + smartcase for better searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- text wrap
vim.opt.wrap = true

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable persistent undo history
vim.opt.undofile = true

-- Enable 24-bit color
vim.opt.termguicolors = true

-- Enable access to System Clipboard
vim.opt.clipboard = "unnamedplus"

-- Cursorline
vim.opt.cursorline = true

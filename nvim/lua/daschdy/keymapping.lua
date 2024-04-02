-- Movement
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<c-d>", "<C-d>zz")
vim.keymap.set("n", "<c-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>k", ":nohlsearch<CR>")

-- Copilot
vim.keymap.set("n", "<leader>pe", ":Copilot enable<CR>", {})
vim.keymap.set("n", "<leader>pd", ":Copilot disable<CR>", {})

-- Lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>en", vim.diagnostic.goto_next, {})
vim.keymap.set("n", "<leader>ep", vim.diagnostic.goto_prev, {})

-- MarkdownPreview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<CR>", {})

-- Neotree
vim.keymap.set("n", "<c-n>", ":Neotree filesystem reveal left<CR>")

-- NoneLS
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Pomo
vim.keymap.set("n", "<c-s-z>", ":TimerStart 25m Fokus<CR>", {})
vim.keymap.set("n", "<c-s-x>", ":TimerStop<CR>", {})

-- Zettelkasten
vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>", {})
vim.keymap.set("n", "<leader>zt", "<cmd>Telekasten show_tags<CR>", {})
vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>", {})

-- Set highlight on search, but clear on pressing <Esc> in normal mod
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Split 
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", {})
vim.keymap.set("n", "<leader>hs", ":split<CR>", {})

-- Specific
vim.keymap.set("i", "<M-5>", "[", {})
vim.keymap.set("i", "<M-6>", "]", {})

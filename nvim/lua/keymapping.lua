-- Movement
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Copilot
vim.keymap.set("n", "<leader>pe", ":Copilot enable<CR>", {})
vim.keymap.set("n", "<leader>pd", ":Copilot disable<CR>", {})

-- Lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- MarkdownPreview
vim.keymap.set("n", "<C-S-m>", ":MarkdownPreviewToggle<CR>", {})

-- Neotree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")

-- NoneLS
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Pomo
vim.keymap.set("n", "<C-S-z>", ":TimerStart 25m Fokus<CR>", {})
vim.keymap.set("n", "<C-S-x>", ":TimerStop<CR>", {})

-- Zettelkasten
vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>", {})
vim.keymap.set("n", "<leader>zt", "<cmd>Telekasten show_tags<CR>", {})
vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>", {})

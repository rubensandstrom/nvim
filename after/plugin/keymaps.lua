local opts = {noremap = true, silent = true}
local term_opts = {silent = true}

map = vim.api.nvim_set_keymap
g = vim.g

map("", "<space>", "<nop>", opts)
g.mapleader = " "
g.maplocalleader = " "

map("n", "<leader>q", "<cmd>q<cr>", opts)
map("n", "<leader>qq", "<cmd>q!<cr>", opts)
map("n", "<leader>wq", "<cmd>wq<cr>", opts)
map("n", "<S-tab>", "<<", opts)
map("n", "<tab>", ">>", opts)
vim.keymap.set("n", "<leader>p", function() print("Hello world!")end)

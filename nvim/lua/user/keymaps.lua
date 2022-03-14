local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap leader key to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Window/tab navigation
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)
keymap("t", "<C-Left>", "<C-\\><C-N><C-w>h", opts)
keymap("t", "<C-Down>", "<C-\\><C-N><C-w>j", opts)
keymap("t", "<C-Up>", "<C-\\><C-N><C-w>k", opts)
keymap("t", "<C-Right>", "<C-\\><C-N><C-w>l", opts)

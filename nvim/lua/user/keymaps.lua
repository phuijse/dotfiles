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

-- barbar
keymap('n', '<A-Left>', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<A-Right>', '<Cmd>BufferNext<CR>', opts)
keymap('n', '<A-q>', '<Cmd>BufferClose<CR>', opts)
-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- formatter
keymap("n", "<leader>f", ":Format<CR>", opts)
-- SnipRun
keymap('v', '<S-CR>', '<Plug>SnipRun', {silent = true})
keymap('n', '<S-CR>', '<Plug>SnipRun', {silent = true})
-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
--keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {noremap = true, silent = true})
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)

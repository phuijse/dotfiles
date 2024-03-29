local opts = {silent = true, noremap = true}
local set_keymap = vim.api.nvim_set_keymap

set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", opts)
set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", opts)
set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", opts)
set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", opts)
set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", opts)
set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", opts)

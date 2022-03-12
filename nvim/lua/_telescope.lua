require("telescope").setup({
    defaults = {
        border = true,
        layout_strategy = "bottom_pane",
        layout_config = {
            height = 0.30,
            width = 1.00,
        },
        -- path_display = { "shorten" },
        sorting_strategy = "ascending",
    },
})

local keymap = vim.api.nvim_set_keymap


keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {noremap = true, silent = true})
--keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {noremap = true, silent = true})
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {noremap = true, silent = true})
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {noremap = true, silent = true})

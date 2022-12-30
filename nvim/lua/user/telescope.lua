local telescope = require("telescope")

telescope.setup {
    defaults = {
        border = true,
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
        layout_strategy = "bottom_pane",
        layout_config = {
            height = 0.30,
            width = 1.00,
        },
        -- path_display = { "shorten" },
        sorting_strategy = "ascending",
    },
}


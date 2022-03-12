local iron = require('iron')

iron.core.set_config {
  repl_open_cmd = "rightbelow 10 split",
  preferred={
    python = "ipython"
  }
}



local keymap = vim.api.nvim_set_keymap

keymap("v", "<leader><CR>", "<Plug>(iron-visual-send)", {})
keymap("n", "<leader><CR>", "<Plug>(iron-send-line)", {})
keymap("n", "<leader>x", "<Plug>(iron-interrupt)", {})
keymap("n", "<leader>q", "<Plug>(iron-exit)", {})
keymap("n", "<leader>cl", "<Plug>(iron-clear)", {})

keymap("t", "<Esc>", "<C-\\><C-n>", {noremap=true})

-- <Plug>(iron-repeat-cmd)
-- <Plug>(iron-cr)

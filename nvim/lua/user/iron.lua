local iron = require('iron.core')
local view = require("iron.view")

iron.setup {
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        command = {"zsh"}
      },
      python = {
          command = {"ipython"}
      },
    },
    -- How the repl window will be displayed
    -- See below for more information
    -- repl_open_cmd = require('iron.view').bottom(40),
    repl_open_cmd = view.split.vertical.botright(50),
  },
  -- Iron doesn't set keymaps by default anymore.
  -- You can set them here or manually add keymaps to the functions in iron.core
  keymaps = {
    send_motion = "<leader><CR>",
    visual_send = "<leader><CR>",
    --send_file = "<space>sf",
    send_line = "<leader><CR>",
    --send_mark = "<space>sm",
    --mark_motion = "<space>mc",
    --mark_visual = "<space>mc",
    --remove_mark = "<space>md",
    --cr = "<space>s<cr>",
    interrupt = "<leader>x",
    exit = "<leader>q",
    clear = "<leader>cl",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = true

  }
}



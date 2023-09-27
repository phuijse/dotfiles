require'sniprun'.setup({
  selected_interpreters = {'Python3_fifo'},     --# use those instead of the default for the current filetype
  repl_enable = {'Python3_fifo'},               --# enable REPL-like behavior for the given interpreters
  repl_disable = {},              --# disable REPL-like behavior for the given interpreters

  interpreter_options = {         --# interpreter-specific options, see docs / :SnipInfo <name>

    --# use the interpreter name as key
    GFM_original = {
      use_on_filetypes = {"markdown.pandoc"}    --# the 'use_on_filetypes' configuration key is
                                                --# available for every interpreter
    },
    Python3_fifo = {
        interpreter = "ipython",
        error_truncate = "auto"         --# Truncate runtime errors 'long', 'short' or 'auto'
                                        --# the hint is available for every interpreter
                                        --# but may not be always respected
    }
  },      

  --# you can combo different display modes as desired and with the 'Ok' or 'Err' suffix
  --# to filter only sucessful runs (or errored-out runs respectively)
  display = { "TerminalWithCode" },

  live_display = { "VirtualTextOk" }, --# display mode used in live_mode

  display_options = {
    terminal_width = 45,       --# change the terminal display option width
    notification_timeout = 5   --# timeout for nvim_notify output
  },

  --# You can use the same keys to customize whether a sniprun producing
  --# no output should display nothing or '(no output)'
  show_no_output = {
    "Classic",
    "TempFloatingWindow",      --# implies LongTempFloatingWindow, which has no effect on its own
  },

  --# customize highlight groups (setting this overrides colorscheme)
  snipruncolors = {
    SniprunVirtualTextOk   =  {bg="#66eeff",fg="#000000",ctermbg="Cyan",cterfg="Black"},
    SniprunFloatingWinOk   =  {fg="#66eeff",ctermfg="Cyan"},
    SniprunVirtualTextErr  =  {bg="#881515",fg="#000000",ctermbg="DarkRed",cterfg="Black"},
    SniprunFloatingWinErr  =  {fg="#881515",ctermfg="DarkRed"},
  },

  live_mode_toggle='off',      --# live mode toggle, see Usage - Running for more info   

  --# miscellaneous compatibility/adjustement settings
  inline_messages = 0,        --# inline_message (0/1) is a one-line way to display messages
                              --# to workaround sniprun not being able to display anything

  borders = 'single',         --# display borders around floating windows
                              --# possible values are 'none', 'single', 'double', or 'shadow'
})

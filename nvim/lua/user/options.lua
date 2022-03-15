vim.g.border_style = "rounded"

local opt = vim.opt

-- General configuration
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.cursorline = true
opt.fileencoding = "utf-8"
opt.foldmethod = "manual"
opt.list = true
opt.listchars:append("eol:↴")
opt.mouse = "a" -- all modes
opt.number = true
opt.numberwidth = 1
opt.pumheight = 10 -- pop-up menu height
opt.relativenumber = false
opt.ruler = true
opt.scrolloff = 8
opt.showcmd = true
opt.showmatch = true
opt.showmode = true
opt.showtabline = 2
opt.signcolumn = "yes"
opt.smartcase = true
opt.splitbelow = true 
opt.splitright = true 
opt.termguicolors = true
opt.wrap = true

-- Tabulation
opt.autoindent = true
opt.expandtab = true
opt.shiftwidth = 4
opt.shiftround = true
opt.softtabstop = 4
opt.smartindent = true
opt.tabstop = 4 

-- Swap files
opt.backup = false
opt.swapfile = false

-- Searching
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true

-- Persistent undo
opt.undofile = true
opt.undodir = vim.fn.stdpath("cache") .. "/undo"

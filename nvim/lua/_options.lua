vim.g.mapleader = ","
vim.g.border_style = "rounded"

-- General configuration
vim.opt.cmdheight = 1
vim.opt.cursorline = true
vim.opt.fileencoding = "utf-8"
vim.opt.foldmethod = "manual"
vim.opt.number = true
vim.opt.numberwidth = 1
vim.opt.relativenumber = false
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.showtabline = 2
-- vim.opt.smartcase = true
vim.opt.splitbelow = true 
vim.opt.splitright = true 
vim.opt.termguicolors = true
vim.opt.wrap = true

-- tabs
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4 

-- Copy and paste
vim.opt.clipboard = "unnamed"
-- vim.opt.mouse = "v" -- visual only
vim.opt.mouse = "a" -- all modes

-- Swap files
vim.opt.backup = false
vim.opt.swapfile = false

-- Searching
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true

-- Persistent undo
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"

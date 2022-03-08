lua require('plugins')
lua require('lspconfig').pyright.setup{}

lua << EOF
local iron = require('iron')

iron.core.set_config {
  repl_open_cmd = "rightbelow 10 split",
  preferred={
    python = "ipython"
  }
}
EOF
" autocmd BufLeave * if &buftype == 'terminal' | :set nowfw | endif
tnoremap <Esc> <C-\><C-n>

let mapleader =","

" " Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set nofoldenable
set autoindent
set smartindent

" Syntax
syntax on
syntax sync fromstart

" Theme
colorscheme catppuccin
set termguicolors

" Copy and paste
set clipboard=unnamed
set mouse=v  " Middle click paste

" Nvim Tree 
noremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>

" Tab navigation
"map <Leader>n <esc>:tabprevious<CR>
"map <Leader>m <esc>:tabnext<CR>
"nnoremap <C-t> :tabnew<CR>

" Move between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l


" General look and feel
set number " show line number
set ruler " show cursor position
set cursorline 
set wrap
set showtabline=4
set showmatch " Matching bracket
set showcmd

" Persistent undo 
set undofile
set undodir=$HOME/.config/nvim/undo

" Searching
set hlsearch
set incsearch
set ignorecase

" Python settings
"set g:powerline_pycmd="py3"
"set laststatus=2

" Jedi and supertab
"let g:jedi#popup_on_dot = 0
"let g:SuperTabDefaultCompletionType = "context"
"let g:slime_target = "tmux" 
"let g:slime_python_ipython = 1
"autocmd FileType python setlocal completeopt-=preview

" Disable swap files
set nobackup
set nowritebackup
set noswapfile

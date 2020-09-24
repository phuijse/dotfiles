syntax on
filetype indent plugin on
set t_Co=256
let g:wallaby_transparent_bg=1
colorscheme wallaby
set modeline
"Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed
"Tab navigation
let mapleader =","
set showcmd
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
nnoremap <C-t> :tabnew<CR>
"Move between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
set number "show line number
set wrap
"tab navigation
set history=700
set undolevels=700
"python settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set nofoldenable
let g:powerline_pycmd="py3"
set laststatus=2
"Jedi and supertab
let g:jedi#popup_on_dot = 0
let g:SuperTabDefaultCompletionType = "context"
let g:slime_target = "tmux" 
let g:slime_python_ipython = 1
"autocmd FileType python setlocal completeopt-=preview
"Disable swap files
set nobackup
set nowritebackup
set noswapfile

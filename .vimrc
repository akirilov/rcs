" Colors
syntax on
set background=dark
"set t_Co=256

" Tab settings
set expandtab
set shiftwidth=4
set softtabstop=4
filetype plugin indent on

" Line numbering
set number
set relativenumber
set ruler

" Searching
set incsearch
set hlsearch

" Folding
" set foldenable
" set foldmethod=indent

" No compatibility
set nocompatible

" Security
set modelines=0

" QOL
set scrolloff=3

" Tabs
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" Timeouts
set notimeout

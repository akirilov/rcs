" Colors
syntax on
set background=dark
"set t_Co=256

" Tab settings
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin indent on

" Line numbering
set number
set ruler
set cursorline

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

" Toggle defaults
match ErrorMsg '\%>100v.\+'

" <F2> - Toggle cursorline
map <F2> :set paste!<cr>:set number!<cr>
" <F3> - Highlight lines over 100 characters
map <F3> :match ErrorMsg '\%>100v.\+'<cr>
" <F4> - Clear matches
map <F4> :call clearmatches()<cr>

" Plugins
execute pathogen#infect()

" <F5> - Nerdtree
map <F5> :NERDTreeToggle<cr>
" <F6> - Undotree
map <F6> :UndotreeToggle<cr>

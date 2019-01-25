" Colors
syntax on
set background=dark
hi TabLineSel ctermfg=Black ctermbg=White
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
set foldenable
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

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

" Enable long lines highlight/break by default
match ErrorMsg '\%>100v.\+'
set tw=100

" Mac compatibility
let g:NERDTreeNodeDelimiter = "\u00a0"

" Plugins
execute pathogen#infect()

" <F2> - Toggle cursorline
map <F2> :set paste!<cr>:set number!<cr>
" <F3> - Highlight and break lines over 100 characters
map <F3> :match ErrorMsg '\%>100v.\+'<cr>:set tw=100<cr>
" <F4> - Clear matches
map <F4> :call clearmatches()<cr>:set tw=0<cr>

" <F5> - Nerdtree
map <F5> :NERDTreeToggle<cr>

" <F6> - Undotree
map <F6> :UndotreeToggle<cr>

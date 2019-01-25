" ############
" # Settings #
" ############

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

" Save view
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

" No compatibility
set nocompatible

" Security
set modelines=0

" QOL
set scrolloff=3

" Tabs
noremap <C-t><up> :tabr<cr>
noremap <C-t><down> :tabl<cr>
noremap <C-t><left> :tabp<cr>
noremap <C-t><right> :tabn<cr>
noremap <C-t><C-t> :tabn<cr>
noremap <C-t>n :tabnew<cr>

" No timeouts
set notimeout

" Mac compatibility
let g:NERDTreeNodeDelimiter = "\u00a0"

" Plugins
execute pathogen#infect()

" #############
" # Shortcuts #
" #############

" <F2> - Toggle cursorline
noremap <F2> :set cursorline!<cr>

" <F3> - Toggle copy/paste mode
noremap <F3> :set paste!<cr>:set number!<cr>

" <F4> - Highlight and break lines over 100 characters
" Enable long lines highlight/break by default
set tw=100
" Add toggle function
let s:text_break_flag=0
noremap <F4> :call LineBreakToggle()<cr>
function! LineBreakToggle()
  if s:text_break_flag
    set tw=0
    call clearmatches()
    let s:text_break_flag=0
  else
    set tw=100
    call matchadd('ErrorMsg', '\%>100v.\+')
    let s:text_break_flag=1
  endif
endfunction

" <F5> - Nerdtree
noremap <F5> :NERDTreeToggle<cr>

" <F6> - Undotree
noremap <F6> :UndotreeToggle<cr>

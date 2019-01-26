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
"
" Enable long lines highlight/break by default
set textwidth=100
autocmd BufWinEnter *.* call matchadd('ErrorMsg', '\%>100v.\+')

" No compatibility
set nocompatible

" Mac compatibility
let g:NERDTreeNodeDelimiter = "\u00a0"

" Security
set modelines=0

" QOL
set scrolloff=3

" Tabs
noremap <C-t><up> :tabr<cr>
noremap <C-t><down> :tabl<cr>
noremap <C-t><left> :tabp<cr>
noremap <C-t><right> :tabn<cr>
noremap <C-t><S-up> :tabm 0<cr>
noremap <C-t><S-down> :tabm<cr>
noremap <C-t><S-left> :tabm -1<cr>
noremap <C-t><S-right> :tabm +1<cr>
noremap <C-t><C-t> :tabn<cr>
noremap <C-t>n :tabnew<cr>

" No timeouts
set notimeout

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
" Add toggle function
let s:text_break_flag=1
noremap <F4> :call LineBreakToggle()<cr>
function! LineBreakToggle()
  if s:text_break_flag
    set textwidth=0
    call clearmatches()
    let s:text_break_flag=0
  else
    set textwidth=100
    call matchadd('ErrorMsg', '\%>100v.\+')
    let s:text_break_flag=1
  endif
endfunction

" <F5> - Nerdtree
noremap <F5> :NERDTreeToggle<cr>

" <F6> - Undotree
noremap <F6> :UndotreeToggle<cr>

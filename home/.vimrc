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
set tabstop=2
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
set viewoptions-=options
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* loadview

" Enable long lines highlight/break by default
set textwidth=100
autocmd BufWinEnter *.* call matchadd('ErrorMsg', '\%>100v.\+', 10, 1001)

" Enable tab highlight
autocmd BufWinEnter *.* let b:hltabs_flag=1
autocmd BufWinEnter *.* call matchadd('ErrorMsg', '\t', 10, 1002)

" Highlight trailing spaces by default
autocmd BufWinEnter *.* let b:text_break_flag=1
autocmd BufWinEnter *.* call matchadd('ErrorMsg', '\s\+$')

" No compatibility
set nocompatible

" Mac compatibility
let g:NERDTreeNodeDelimiter = "\u00a0"

" Security
set modelines=0

" Scroll at bottom 3
set scrolloff=3

" Move by screen line, not buffer line
noremap <up> gk
noremap <down> gj
noremap <A-up> k
noremap <A-down> j

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

" <F1> - Toggle cursorline
noremap <F1> :set cursorline!<cr>

" <F2> - Toggle copy/paste mode
noremap <F2> :set paste!<cr>:set number!<cr>

" <F3> - Highlight Tabs
" Add toggle function
noremap <F3> :call HlTabs()<cr>
function! HlTabs()
  if b:hltabs_flag
    call matchdelete(1002)
    let b:hltabs_flag=0
  else
    call matchadd('ErrorMsg', '\t', 10, 1002)
    let b:hltabs_flag=1
  endif
endfunction

" <F4> - Highlight and break lines over 100 characters
" Add toggle function
noremap <F4> :call LineBreakToggle()<cr>
function! LineBreakToggle()
  if b:text_break_flag
    set textwidth=0
    call matchdelete(1001)
    let b:text_break_flag=0
  else
    set textwidth=100
    call matchadd('ErrorMsg', '\%>100v.\+', 10, 1001)
    let b:text_break_flag=1
  endif
endfunction

" <F5> - Nerdtree
noremap <F5> :NERDTreeToggle<cr>

" <F6> - Undotree
noremap <F6> :UndotreeToggle<cr>:UndotreeFocus<cr>

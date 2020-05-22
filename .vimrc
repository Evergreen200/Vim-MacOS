syntax on
set hidden
set noerrorbells
set shiftwidth=4
set smartindent
set nowrap
set smartcase
set nobackup
set undodir=/.vim/undodir
set undofile
set number
set noswapfile
set showcmd
set tabstop=4 softtabstop=4
set cmdheight=2
set incsearch
set encoding=utf-8

call plug#begin('~/.vim/plugged')
 
Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree'
 
call plug#end()
 
colorscheme gruvbox
set background=dark
set colorcolumn=800
 
let g:syntastic_java_checkers=[]

" Settings to open the nerdtree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 
" Ctrl and n to show the file menu (nerdtree)
map <C-n> :NERDTreeToggle<CR>

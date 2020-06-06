syntax on
set hidden
set noerrorbells
set number
set shiftwidth=4
set nowrap
set smartcase
set smartindent
set nobackup
set undodir=/.vim/undodir
set undofile
set noswapfile
set showcmd
set tabstop=4 softtabstop=4
set incsearch
set encoding=utf-8

call plug#begin('~/.vim/plugged')

" Plugins
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'

call plug#end()

" Gruvbox
colorscheme	gruvbox
set background=dark
let g:gruvbox_contrast_dark= 'hard'

" UndoTree:
" The method below works better than the one described by mbbil
map <C-n> :UndotreeToggle<CR>
map <C-m> :UndotreeFocus<CR>

if has("persisten_undo")
	set undodir=$HOME."~/.vim/undodir"
	set undofile
endif

if !exists('g:undotree_WindowLayout')
	let g:undotree_WindowLayout = 3
endif

" YouCompleteMe:
let g:syntastic_java_checkers = []


" NerdTree:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-o> :NERDTreeToggle<CR>
" This settings aren't finished




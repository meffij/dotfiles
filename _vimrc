set backspace=indent,eol,start
set autoindent
set complete-=i
set smarttab

set nrformats-=octal
set notimeout
set ttimeout
set ttimeoutlen=100

set ruler
set wildmenu
if !&scrolloff
	set scrolloff=1
endif

call plug#begin()

Plug 'vimwiki'

Plug 'altercation/vim-colors-solarized'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-surround', { 'for': [ 'js', 'cpp', 'hpp', 'html', 'xml' ] }

Plug 'pprovost/vim-ps1'

Plug 'rust-lang/rust.vim'

"Plug 'valloric/youcompleteme'

call plug#end()

set tabstop=2
set shiftwidth=2

set background=dark
colorscheme solarized
set number
set relativenumber
set nocompatible
filetype plugin on
syntax on
set wrap
set linebreak
set nolist

" swap visual and visual block mode
nnoremap v <C-V>
nnoremap <C-V> v

vnoremap v <C-V>
vnoremap <C-V> v

nnoremap : ;
nnoremap ; :

"set hlsearch
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
nnoremap <BS> :noh<return>
set nomodeline
nnoremap Y y$

packadd! matchit

set ignorecase
set smartcase
set nostartofline
set confirm
set visualbell
set hidden

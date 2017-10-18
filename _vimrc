set backspace=indent,eol,start
set autoindent
set complete-=i
set smarttab
set expandtab

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

Plug 'editorconfig/editorconfig-vim'

Plug 'vim-syntastic/syntastic'

Plug 'vim-scripts/paredit.vim'

Plug 'guns/vim-clojure-static'

Plug 'luochen1990/rainbow'

Plug 'tpope/vim-fireplace'

Plug 'vimwiki/vimwiki'

Plug 'altercation/vim-colors-solarized'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-surround', { 'for': [ 'js', 'ts', 'tsx', 'c', 'h', 'cpp', 'hpp', 'html', 'xml' ] }

Plug 'pprovost/vim-ps1'

Plug 'rust-lang/rust.vim'

Plug 'valloric/youcompleteme'

Plug 'JamshedVesuna/vim-markdown-preview'

Plug 'christoomey/vim-tmux-navigator'

Plug 'tpope/vim-dispatch'

Plug 'tpope/vim-fugitive'

Plug 'leafgarland/typescript-vim'

Plug 'alunny/pegjs-vim'

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

" Makes cursor work correctly
" let &t_ti.="\e[1 q"
" let &t_SI.="\e[5 q"
" let &t_EI.="\e[1 q"
" let &t_te.="\e[0 q"

nnoremap <BS> :noh<return>
set nomodeline
nnoremap Y y$

" packadd! matchit

set ignorecase
set smartcase
set nostartofline
set confirm
set visualbell
set hidden

" highlight OverLength ctermbg=red guibg=#592929
" match OverLength /\%81v.\+/
" let &colorcolumn=join(range(81,999),",")

command! JJ !cargo test
command! GTD :YcmCompleter GoToDefinition
command! GTDef :YcmCompleter GoToDeclaration
command! Tup !tup
command! TUP !tup

let mapleader = " "

nnoremap <C-T> :w<CR>:!tup<CR>
nnoremap <C-G> :YcmCompleter GoTo<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>

" vimwiki configure
" let g:vimwiki_list

set ssop-=options  " do not store global and local variables in a session
set ssop-=folds    " do not store folds

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_args='-c ~/repos/lint/.eslintrc'
let g:syntastic_quiet_messages = { "regex": 'max-len' }

" if has("clipboard")
"     set clipboard=unnamed " copy to the system clipboard

    " if has("unnamedplus") " X11 support
    "     set clipboard+=unnamedplus
    " endif
" endif

let g:rainbow_conf = {
\	'guifgs': ['red', 'green', 'lightgreen', 'lightmagenta'],
\	'ctermfgs': ['red', 'lightblue', 'magenta', 'lightgreen', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}
let g:rainbow_active = 1

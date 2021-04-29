" Basics
set encoding=UTF-8
set fileencoding="utf-8"
set showmatch
set number relativenumber
set ignorecase smartcase
set noexpandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set numberwidth=4
set textwidth=90
set autoindent
set wildmode=longest,list
set nohlsearch
set clipboard+=unnamedplus

syntax on
filetype plugin indent on

"set background=light
"let g:gruvbox_termcolors=16
"colorscheme gruvbox

" This line is important, see 
" https://github.com/morhetz/gruvbox/wiki/Terminal-specific#0-recommended-neovimvim-true-color-support
set termguicolors

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)


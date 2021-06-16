" Basic options for all filetypes 
" Options are grouped according to their value types:
" 1. boolean
" 2. number
" 3  string
" Last Modified: 2021 Jun 16 21:24

set number                      " absolute line number
set nohlsearch                  " not highlight search results
set writebackup                 " backup files when editing a file
set showmatch                   " match paired brackets
set ignorecase smartcase
set autoindent
set expandtab
set secure                      " turn on secure: no au allowed in vimrc

set tabstop=8
set softtabstop=4
set shiftwidth=4
set numberwidth=4
set conceallevel=0              " to show the bars and stars

set backupdir=~/.local/share/nvim/site/tmp            " backup file to .tmp
set undodir=~/.local/share/nvim/site/tmp              " undo file to .tmp
set dir=~/.local/share/nvim/site/tmp                  " swap file to .tmp 
set wildmode=longest,list
set viminfo='20,/20,:20,<30,f1,h,s10,rA:,rB:,n~/.local/share/nvim/viminfo
set shortmess=filnrwxtToOS 
set iskeyword=@,48-57,192-225,- " two_words; one-word 
set complete-=i
set clipboard+=unnamedplus
set background=light            " override neovim's default: dark

filetype plugin indent on
syntax enable

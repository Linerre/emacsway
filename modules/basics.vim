" Basics

set number                      " absolute line number
set writebackup                 " backup files when editing a file
set showmatch                   " match paired brackets
set ignorecase smartcase
set autoindent
set expandtab
set secure                      " turn on secure: no au allowed in vimrc

set backupdir=~/.local/share/nvim/back            " backup file to .tmp
set undodir=~/.local/share/nvim/undo              " undo file to .tmp
set dir=~/.local/share/nvim/swap                  " swap file to .tmp 
set tabstop=8
set softtabstop=4
set shiftwidth=4
set numberwidth=4

set wildmode=longest,list
set viminfo='20,/20,:20,<30,f1,h,s10,rA:,rB:,n~/.local/share/nvim/viminfo
set shortmess=filnrwxtToOS 
set iskeyword=@,48-57,192-225,- " two_words; one-word 
set complete-=i
set conceallevel=0              " to show the bars and stars
set clipboard+=unnamedplus

filetype plugin indent on
syntax enable

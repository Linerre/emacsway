" General key mappings.
" Plugin specific mappings in their own module file
" Last Modified: 2021 Apr 29 15:59
let mapleader = '\'
let maplocalleader = ' '
nnoremap ; :

noremap <silent> <LocalLeader>ev :e ~/.config/nvim/init.d<CR>
noremap <silent> <LocalLeader>sv :source $MYVIMRC<CR>
noremap <silent> <LocalLeader>vv :vsplit<CR> "split view
noremap <silent> <LocalLeader>vn :vsplit     "split to a new file

noremap <silent> <C-s> :w<Esc>
inoremap <silent> <C-s> :w<Esc>

inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

vnoremap  <Leader>[ di[<Esc>pa]<Esc>
vnoremap  <Leader>( di[<Esc>pa)<Esc>
vnoremap  <Leader>{ di[<Esc>pa}<Esc>
vnoremap  <Leader>" di[<Esc>pa"<Esc>
vnoremap  <Leader>' di[<Esc>pa'<Esc>


" Move btw buffers
nnoremap <silent> <LocalLeader>j :bnext<CR>
nnoremap <silent> <LocalLeader>k :bprevious<CR>
nnoremap <silent> <LocalLeader>x :bd!<CR>


" Toggle light/dark
map <silent> <F11> :set bg=light<CR>
map <silent> <F12> :set bg=dark<CR>

" Files info
nnoremap <silent> fi 1<C-g>  


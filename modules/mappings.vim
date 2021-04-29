" General key mappings.
" Plugin specific mappings in their own module file
" use which-key to look up for a mapping
" Last Modified: 2021 Apr 29 18:51
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


" Buffer operation/movement
nnoremap <silent> <LocalLeader>j :bnext<CR>
nnoremap <silent> <LocalLeader>k :bprevious<CR>
nnoremap <silent> <LocalLeader>x :bd!<CR>
nnoremap <F2> Da<C-R>=strftime("%Y %b %d %H:%M")<CR><Esc>
inoremap <F2> <C-R>=strftime("%Y %b %d %H:%M")<CR>

" Window operation/movement 
noremap <silent> <LocalLeader>q :close<CR>


" Files info
nnoremap <silent> fi 1<C-g>  

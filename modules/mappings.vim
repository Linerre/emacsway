" Key mappings
let mapleader = '\'
let maplocalleader = ' '

noremap <silent> <Leader>ev :e ~/.config/nvim/init.d<CR>
noremap <silent> <Leader>sv :source $MYVIMRC<CR>
noremap <silent> <Leader>vv :vsplit<CR> "split view
noremap <silent> <Leader>vn :vsplit     "split to a new file

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
nnoremap <silent> <C-j> :bnext<CR>
nnoremap <silent> <C-k> :bprevious<CR>
nnoremap <silent> <C-x> :bd!<CR>

" netrw
nnoremap <silent> <Leader>f :Vexplore<CR>


" Toggle light/dark
map <silent> <F11> :set bg=light<CR>
map <silent> <F12> :set bg=dark<CR>

" Files info
nnoremap <silent> fi 1<C-g>  


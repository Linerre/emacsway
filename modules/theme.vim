" Theme and highlighting related config
" Note: &term does not exist in neovim 
" so the following code never works
"   if $term =~ '256color'
"       set t_ut=
"   endif
" Use $TERM instead if necessary
" Last Modified: 2021 Apr 29 21:24

" Toggle light/dark
map <silent> <F11> :set bg=light<CR>
map <silent> <F12> :set bg=dark<CR>
set background=light
let g:gruvbox_contrast_light = 'soft'
if $TERM == 'xterm-256color' 
    let g:gruvbox_italic = '1'
endif

" This line is important, see 
" https://github.com/morhetz/gruvbox/wiki/Terminal-specific#0-recommended-neovimvim-true-color-support
set termguicolors
colorscheme gruvbox
"set t_8f=^[[38;2;%lu;%lu;%lum   "set foreground color
"set t_8f=^[[48;2;%lu;%lu;%lum   "set background color
"set t_Co=256

" highlight the 81st character in the current line
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

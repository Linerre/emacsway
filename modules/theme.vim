" Theme and highlighting related config
" Last Modified: 2021 Apr 29 15:36
set background=light
let g:gruvbox_italic = '1'
let g:gruvbox_contrast_light = 'soft'
colorscheme gruvbox

" This line is important, see 
" https://github.com/morhetz/gruvbox/wiki/Terminal-specific#0-recommended-neovimvim-true-color-support
set termguicolors

" highlight the 81st character in the current line
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

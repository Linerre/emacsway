" Filetype specific settings
" such as tabs, shortcuts for comments
" Last Modified: 2021 Apr 29 17:20

" ==================== VimL  ==================
aug vim_file
  au!
  au BufEnter,BufRead *.vim nn <silent> <Leader>\ :.s=^\(.*\)$=\" \1<CR>
  au BufEnter,BufRead *.vim nn <silent> <Leader>/ :.s=^" \(.*\)$=\1<CR>
  au BufEnter,BufRead *.vim nn <silent> ; :
aug END

" ==================== C/C++ ==================
" Auto cmds
aug c_cpp_file
  au!
" cmt out a single line in normal mode
  au BufEnter,BufRead *.c,*.cpp,*.css nn <silent> <Leader>\ :s=^\(\s*\)\(\S.*\)$=\1\/\* \2 \*\/<CR>
  au BufEnter,BufRead *.c,*.cpp,*.css nn <silent> <Leader>/ :s=^\/\* \(.*\) \*\/$=\1<CR>
" add an empty cmt 
  au BufEnter,BufRead *.c,*.cpp,*.css nn <silent> <LocalLeader>; a/*<Tab>*/<Esc>2h
" toggle c99 style cmt //
  au BufEnter,BufRead,TextChanged *.c,*.cpp,*.js nn <silent> <LocalLeader><Space> :s=^\(.*\)=\/\/ \1<CR>
  au BufEnter,BufRead,TextChanged *.c,*.cpp,*.js nn <silent> <LocalLeader>/ :s=^\/\/ \(.*\)=\1<CR>
" cmt out visually selected block 
  au BufEnter,BufRead *.c,*.cpp,*.css vn <silent> <Leader>\ <Esc>'<i/*<Esc>'>A*/<Esc>'<
  au BufEnter,BufRead *.c,*.cpp,*.css vn <silent> <Leader>/ <Esc>'<2x'>A<BS><BS><Esc>'<
aug END


" ==================== Python ==================
aug py_file
  au!
  " tabsize default to 4; no need to specify for py anymore 
  " au BufEnter,BufNewFile,BufWrite *.py set softtabstop=4 shiftwidth=4  
  au BufEnter *.py nn <silent> <Leader>\ :s:^\(.*\)$:# \1<CR>
  au BufEnter *.py nn <silent> <Leader>/ :s:^# \(.*\)$:\1<CR>
aug END


" =================== LaTeX =====================






" =================== HTML/CSS ================
aug html_css_file
  au!
  au BufEnter *.html,*.css set softtabstop=2 shiftwidth=2
aug END

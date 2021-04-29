" Auto-cmds for all filetypes
" For a specific filetype, see correspoding ftplugins 
" Last Modified: 2021 Apr 29 18:53
augroup general
    au!
    au BufWritePre init.vim,~/*/nvim/modules/*.vim ks|call s:LastMod()|'s 
    au CmdlineEnter /,\? :set hlsearch
    au CmdlineLeave /,\? :set nohlsearch
augroup END

" User-defined functions
fun! s:LastMod()
    if line('$') > 10
        let l:note_last_line = 10
    else
        let l:note_last_line = line('$')
    endif
    exe "1," . l:note_last_line . "s/Last Modified: .*/Last Modified: " . 
    \ strftime("%Y %b %d %H:%M")
endfun

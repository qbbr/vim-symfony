" author: qbbr <r2.kenny@gmail.com>

function! s:Sf2jmp2controller()
    mark C

    let linecontent = getline(line('.'))
    let matches = matchlist(linecontent, '\v\C\@([A-Z]{1}[a-z]{1,})(\w+Bundle)(/Controller/\w+Controller\.php)')
    echo matches

    " not found
    if (matches == [])
        normal! g`C
        echohl WarningMsg | echomsg "not found!" | echohl None
        return
    endif

    let $filename = 'src/' . matches[1] . '/' . matches[2] .  matches[3]

    if filereadable($filename)
        edit $filename
    else
        echohl WarningMsg | echomsg "controller not found!" | echohl None
    endif
endfunction
com! Sf2jmp2controller call s:Sf2jmp2controller()

" create a mapping only in a html Twig file
autocmd BufEnter routing.yml nmap <buffer><leader>v :Sf2jmp2controller<CR>

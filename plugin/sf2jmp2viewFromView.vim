" author: qbbr <imqbbr@gmail.com>

function! s:Sf2jmp2viewFromView()
    mark C

    let linecontent = getline(line('.'))
    let matches = matchlist(linecontent, '\v\C([A-Z]{1}[a-z]{1,})(\w+Bundle):([^:]+)?:([^.:]+\.html\.twig)')

    " not found
    if (empty(matches))
        normal! g`C
        echohl WarningMsg | echomsg "not found!" | echohl None
        return
    endif

    if (matches[3] == '')
        let controllername = ''
    else
        let controllername = matches[3] . '/'
    endif

    let $filename = 'src/' . matches[1] . '/' . matches[2] . '/Resources/views/' . controllername . matches[4]

    if filereadable($filename)
        edit $filename
    else
        echohl WarningMsg | echomsg "file not found!" | echohl None
    endif
endfunction

com! Sf2jmp2viewFromView call s:Sf2jmp2viewFromView()

" create a mapping only in a html twig file
autocmd BufEnter *.html.twig nmap <buffer><leader>v :Sf2jmp2viewFromView<CR>

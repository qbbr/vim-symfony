" author: qbbr <r2.kenny@gmail.com>

function! s:Sf2jmp2view()
    mark C

    " action
    let actionline = search('\wAction', 'b', line("w0"))

    " action not found
    if (actionline == 0)
        normal! g`C
        echohl WarningMsg | echomsg "not found!" | echohl None
        return
    endif

    let actioncontent = getline(actionline)
    let actionname = matchlist(actioncontent, '\v(\w+)Action')
    "echo actionname

    " controller
    let controllerline = search('\wController', 'b', 0)
    let controllercontent = getline(controllerline)
    let controllername = matchlist(controllercontent, '\v(\w+)Controller')
    "echo controllername

    " namespace
    let namespaceline = search('namespace .*', 'b', line("w0"))
    let namespacecontent = getline(namespaceline)
    let namespacename = matchlist(namespacecontent, '\v(\w+)\\(\w+)\\.*')
    "echo namespacename

    " filename
    let $filename = 'src/' . namespacename[1] . '/' . namespacename[2] . '/Resources/views/' . controllername[1] . '/' . actionname[1] . '.html.twig'

    if filereadable($filename)
        edit $filename
    else
        echohl WarningMsg | echomsg "file not found!" | echohl None
    endif
endfunction
com! Sf2jmp2view call s:Sf2jmp2view()

" create a mapping only in a Controller file
autocmd BufEnter *Controller.php nmap <buffer><leader>v :Sf2jmp2view<CR>


function! s:Sf2jmp2viewFromView()
    mark C

    let linecontent = getline(line('.'))
    let matches = matchlist(linecontent, '\v\C([A-Z]{1}[a-z]{1,})(\w+Bundle):([^:]+)?:(\w+\.html\.twig)')

    " not found
    if (matches == [])
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

" create a mapping only in a html Twig file
autocmd BufEnter *.html.twig nmap <buffer><leader>v :Sf2jmp2viewFromView<CR>

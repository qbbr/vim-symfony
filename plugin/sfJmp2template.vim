" jump to template from controllers and templates
" author: @qbbr

function! s:Sfjmp2template()
    mark C

    let currentline = line('.')
    let linecontent = getline(currentline)
    let templatepath = matchlist(linecontent, '\v([a-zA-Z0-9_./]+).twig')

    if empty(templatepath)
        echohl WarningMsg | echomsg 'template not found!' | echohl None
        return
    endif

    let $filepath = 'templates/' . templatepath[0]

    if filereadable($filepath)
        edit $filepath
    else
        echohl WarningMsg | echomsg 'template "' . $filepath . '" not found!' | echohl None
    endif
endfunction

com! Sfjmp2template call s:Sfjmp2template()

" create a mapping in a Controller file
autocmd BufEnter *Controller.php nmap <buffer><leader>v :Sfjmp2template<CR>
" create a mapping in a html twig file
autocmd BufEnter *.html.twig nmap <buffer><leader>v :Sfjmp2template<CR>

" author: @qbbr

function! s:SfJmp2controllerFromRouting()
    mark C

    let linenumber = line('.')
    let linecontent = getline(linenumber)

    " App\Controller\DefaultController::index
    " 1 - namespace (App), 2 - controller (Default), 3 - action (index)
    let matches = matchlist(linecontent, '\v(\w+)\\Controller\\([a-zA-Z\\\/]+)Controller::([a-zA-Z_]+)')

    if empty(matches)
        normal! g`C
        echohl WarningMsg | echomsg "controller not found (line: " . linenumber . ")" | echohl None
        return
    endif

    let $filepath = 'src/Controller/'. matches[2] . 'Controller.php'

    if filereadable($filepath)
        edit $filepath
        let actionline = search('public function ' . matches[3] . '(', 'b', 0) " go to action line
    else
        echohl WarningMsg | echomsg "could not open controller (path: " . $filepath . ")" | echohl None
    endif
endfunction

com! SfJmp2controllerFromRouting call s:SfJmp2controllerFromRouting()

" create a mapping only in yaml
autocmd BufEnter *.yml,*.yaml nmap <buffer><leader>v :SfJmp2controllerFromRouting<CR>

" author: qbbr <imqbbr@gmail.com>

function! s:Sf2jmp2controllerFromRouting()
    mark C

    let linenumber = line('.')
    let linecontent = getline(linenumber)

    " @AcmeDemoBundle/Controller/DefaultController.php
    " 1 - str, 2 - namespace, 3 - bundle, 4 - controller
    let matches = matchlist(linecontent, '\v\C\@([A-Z]{1}[a-z]{1,})(\w+Bundle)/Controller/(\w+)Controller\.php')

    if (empty(matches))
        " _controller: AcmeDemoBundle:Welcome:index
        " 5 - action (not need)
        let matches = matchlist(linecontent, '\v\C_controller: ([A-Z]{1}[a-z]{1,})(\w+Bundle):(\w+):(\w+)')
    endif

    if (empty(matches))
        normal! g`C
        echohl WarningMsg | echomsg "controller not found (line: " . linenumber . ")" | echohl None
        return
    endif

    let $filename = 'src/' . matches[1] . '/' . matches[2] . '/Controller/'. matches[3] . 'Controller.php'

    if filereadable($filename)
        edit $filename
    else
        echohl WarningMsg | echomsg "could not open controller (path: " . $filename . ")" | echohl None
    endif
endfunction

com! Sf2jmp2controllerFromRouting call s:Sf2jmp2controllerFromRouting()

" create a mapping only in routing.yml
autocmd BufEnter routing.yml nmap <buffer><leader>v :Sf2jmp2controllerFromRouting<CR>

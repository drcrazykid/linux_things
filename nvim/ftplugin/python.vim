function! s:pybang()
    let options  = [
        \ 'python2',
        \ 'python3',
        \ 'pypy',
        \ 'pypy3',
        \ 'jython',
        \ 'none'
        \ ]

    unsilent let choice = inputlist([ 'Select your shell:' ]
        \ + map(copy(options), '"[".(v:key+1)."] ".v:val'))

    if choice >= 1 && choice <= (len(copy(options)) - 2)
        0put = '#!/usr/bin/env ' . (options)[choice - 1]
        call append(line("."), "")
        3
    endif
endfunction

command! -bang -nargs=0 -bar PyBang call <SID>pybang()

set expandtab tabstop=4 softtabstop=4 shiftwidth=4

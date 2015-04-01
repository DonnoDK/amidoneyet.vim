if exists("g:loaded_amidoneyet") || &cp
    finish
endif

let g:loaded_amidoneyet = 1
let s:major_version = 1
let s:minor_version = 0
let s:keepcpo = &cpo
set cpo&vim

let g:characters_per_page = 2400.0

function! s:count_pages()
    let filename = expand("%")
    let cmd = "detex " . filename . " | wc -c | tr -d [:space:]"
    let result = system(cmd) / g:characters_per_page
    echo printf("%.1f %s", result, "pages")
endfunction

command! CountPages call s:count_pages()

let &cpo = s:keepcpo
unlet s:keepcpo

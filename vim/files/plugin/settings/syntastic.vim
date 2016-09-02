" ---------------------------------------------------------------------------------------
"                                   Syntastic options
"  --------------------------------------------------------------------------------------
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_check_on_open = 1

" Allow shellcheck to source file
let g:syntastic_sh_shellcheck_args = "-x"

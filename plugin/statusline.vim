" vim-statusline - A simple and easy statusline
" Maintainer:   Kevin Durbin
" Version:      1.0

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

set statusline=\                          " space
set statusline+=%f                        " path to the file
set statusline+=\                         " space
set statusline+=%{fugitive#head(5)}       " git status
set statusline+=\                         " space
set statusline+=%m                        " modified
set statusline+=\                         " space
set statusline+=%r                        " readonly
set statusline+=\                         " space
set statusline+=%q                        " quickfix / locationlist
set statusline+=%=                        " switch to the right side
set statusline+=%{LinterStatus()}         " errors and warnings
set statusline+=\                         " space
set statusline+=%y                        " file type
set statusline+=\                         " space
set statusline+=%c                        " current column
set statusline+=,                         " hyphen
set statusline+=%l                        " current line
set statusline+=/                         " slash
set statusline+=%L                        " total lines
set statusline+=\                         " space

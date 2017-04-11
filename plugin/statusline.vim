" vim-statusline - A simple and easy statusline
" Maintainer:   Kevin Durbin
" Version:      1.0

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
set statusline+=%{ALEGetStatusLine()}     " errors and warnings
set statusline+=\                         " space
set statusline+=%y                        " file type
set statusline+=\                         " space
set statusline+=%c                        " current column
set statusline+=,                         " hyphen
set statusline+=%l                        " current line
set statusline+=/                         " slash
set statusline+=%L                        " total lines
set statusline+=\                         " space

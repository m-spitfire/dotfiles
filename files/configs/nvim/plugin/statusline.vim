" build status line
set statusline=
set statusline+=%h                                                   " Help buffer flag
set statusline+=%q                                                   " Quickfix/Location list
set statusline+=%w                                                   " Preview window flag
set statusline+=%f                                                   " file relative path
set statusline+=%m                                                   " modified flag
set statusline+=%r                                                   " readonly flag
set statusline+=%=                                                   " left/right separator
set statusline+=\ %y                                                 " filetype
set statusline+=\ %p%%                                               " line percentage
set statusline+=\ %l:%v                                              " line and virtual column number

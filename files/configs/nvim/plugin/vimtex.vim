let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor = 'latexmk'
let g:vimtex_view_method = 'zathura'

set conceallevel=2
let g:tex_conceal = 'abdgm'

" Avoid utf-8 glyphs
let g:tex_superscripts = "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts = "[0-9aehijklmnoprstuvx,+-/().]"

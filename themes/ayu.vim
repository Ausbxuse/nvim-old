let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:material_theme_style = 'darker'
let g:material_terminal_italics=1

set termguicolors
syntax on
hi Comment cterm=italic

let ayucolor="mirage"
let g:SnazzyTransparent=1
colorscheme snazzy
hi LineNr ctermbg=NONE guibg=NONE
set hlsearch
hi Search guibg=Yellow
hi Search guifg=Black

" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}

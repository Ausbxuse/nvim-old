function! s:_ (name, ...)
  let fg = ''
  let bg = ''
  let attr = ''

  if type(a:1) == 3
    let fg   = get(a:1, 0, '')
    let bg   = get(a:1, 1, '')
    let attr = get(a:1, 2, '')
  else
    let fg   = get(a:000, 0, '')
    let bg   = get(a:000, 1, '')
    let attr = get(a:000, 2, '')
  end

  let has_props = v:false

  let cmd = 'hi! ' . a:name
  if !empty(fg) && fg != 'none'
    let cmd .= ' guifg=' . fg
    let has_props = v:true
  end
  if !empty(bg) && bg != 'none'
    let cmd .= ' guibg=' . bg
    let has_props = v:true
  end
  if !empty(attr) && attr != 'none'
    let cmd .= ' gui=' . attr
    let has_props = v:true
  end
  execute 'hi! clear ' a:name
  if has_props
    execute cmd
  end
endfunc

" Setup
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
if has('termguicolors')
    set termguicolors
endif

let g:colors_name = "snappy"

let g:SnazzyTransparent = 1

let s:base0      = '#1B2229'
let s:base1      = '#1c1f24'
let s:base2      = '#202328'
let s:base3      = '#23272e'
let s:base4      = '#3f444a'
let s:base5      = '#5B6268'
let s:base6      = '#73797e'
let s:base7      = '#9ca0a4'
let s:base8      = '#b1b1b1'
let s:base9      = '#E6E6E6'

let s:grey       = s:base4
let s:red        = '#ff2740'
let s:orange     = '#fd971f'
let s:green      = '#a6e22e'
let s:teal       = '#4db5bd'
let s:yellow     = '#f4bf75'
let s:blue       = '#66d9ef'
let s:dark_blue  = '#2257A0'
"let s:magenta    = '#c678dd'
let s:magenta    = '#fc1a70'
let s:violet     = '#a9a1e1'
let s:cyan       = '#a1efe4'
let s:dark_cyan  = '#5699AF'
let s:white      = '#efefef'

let s:green_alt  = '#799033'

let s:bg             = '#282c34'
let s:bg_alt         = '#21242b'
let s:bg_highlight   = '#2E323C'
let s:bg_popup       = color#Lighten('#3E4556', 0.3)
let s:bg_widget      = s:bg
let s:bg_statusline  = s:bg_popup
let s:bg_visual      = color#Lighten(s:base4, 0.3)
let s:bg_selection   = s:dark_blue
let s:bg_highlighted = '#4A4A45'

let s:fg           = '#bbc2cf'
let s:fg_alt       = '#5B6268'
let s:fg_widget    = s:fg
let s:fg_conceal   = s:base4
let s:fg_subtle    = s:base7
let s:fg_highlight = color#Lighten(s:fg, 0.2)
let s:fg_linenr    = s:base4


let s:highlight       = s:blue
let s:highlight_color = s:base0
" Core
let  red      =  '#ff2740'
let  orange   =  '#fd971f'
let  green    =  '#aae95b'
let  yellow   =  '#f3f99d'
let  blue     =  '#57c7ff'
let  magenta  =  '#fc1a70'
let  cyan     =  '#62d8f1'
let  purple   =  '#c678dd'
let  pink     =  '#e379d8'

" Grayscale
let  ui_0     =  '#F9F9F9'
let  ui_1     =  '#f9f9ff'
let  ui_2     =  '#eff0eb'
let  ui_3     =  '#e2e4e5'
let  ui_4     =  '#a1a6a8'
let  ui_5     =  '#848688'
let  ui_6     =  '#5e6c70'
let  ui_7     =  '#57c7ff'
let  ui_8     =  '#606580' "comment color
let  ui_9     =  '#3a3d4d' "underline of current line color
let  ui_11    =  '#282a36'
let  ui_12    =  '#192224'

let g:terminal_color_0 = '#121212'
let g:terminal_color_1 = '#ff000f'
let g:terminal_color_2 = '#aae95b'
let g:terminal_color_3 = '#ffb900'
let g:terminal_color_4 = '#61aeee'
let g:terminal_color_5 = '#ff6ac1'
let g:terminal_color_6 = '#00d7ea'
let g:terminal_color_7 = '#ffffff'
let g:terminal_color_8 = '#444444'
let g:terminal_color_9 = '#ff2740'
let g:terminal_color_10 = '#abe15b'
let g:terminal_color_11 = '#ffd242'
let g:terminal_color_12 = '#61afef'
let g:terminal_color_13 = '#fc1a70'
let g:terminal_color_14 = '#67fff0'
let g:terminal_color_15 = '#ffffff'

let s:bg_current = s:bg
let s:bg_visible = s:bg
let s:bg_other   = s:base1
let s:diff_info_fg  = s:blue
let s:diff_info_bg0 = color#Mix('#D8EEFD', s:bg, 0.6)

call s:_('TabLine',             s:base7, s:bg_alt,  'bold')
call s:_('TabLineSel',          s:blue,  s:bg_current, 'bold')
call s:_('TabLineFill',         'none',  s:bg_other,   'bold')
call s:_('BufferCurrent',       s:base9,          s:bg_current,  'none')
call s:_('BufferCurrentIndex',  s:base6,          s:bg_current,  'none')
call s:_('BufferCurrentMod',    s:yellow,         s:bg_current,  'none')
call s:_('BufferCurrentSign',   s:blue,           s:bg_current,  'none')
call s:_('BufferCurrentTarget', s:red,            s:bg_current,  'bold')

call s:_('BufferVisible',       s:base7,          s:bg_visible,  'none')
call s:_('BufferVisibleIndex',  s:base9,          s:bg_visible,  'none')
call s:_('BufferVisibleMod',    s:yellow,         s:bg_visible,  'none')
call s:_('BufferVisibleSign',   s:base4,          s:bg_visible,  'none')
call s:_('BufferVisibleTarget', s:red,            s:bg_visible,  'bold')

call s:_('BufferInactive',       s:base6,          s:bg_other,    'none')
call s:_('BufferInactiveIndex',  s:base6,          s:bg_other,    'none')
call s:_('BufferInactiveMod',    s:yellow,         s:bg_other,    'none')
call s:_('BufferInactiveSign',   s:base4,          s:bg_other,    'none')
call s:_('BufferInactiveTarget', s:red,            s:bg_other,    'bold')

call s:_('BufferTabpages',       s:blue,           s:bg_statusline, 'bold')
call s:_('BufferTabpageFill',    s:base4,          s:bg_other,    'bold')

call s:_('BufferPart',        s:base4,   s:bg_other, 'bold')

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi clear -- no settings --

call s:_('NormalPopup',       s:fg_highlight, s:bg_popup)
call s:_('NormalPopover',     s:fg_highlight, s:bg_popup)
call s:_('NormalPopupPrompt', s:fg_highlight,        color#Darken(s:bg_popup, 0.3), 'bold')
call s:_('NormalPopupSubtle', s:base6,        s:bg_popup)
call s:_('Normal', ui_1, ui_11)
call s:_('SignColumn          ',ui_11 , )
call s:_('TSPunctSpecial          ',orange ,''         )
call s:_('TSConditional          ',magenta ,'bold'         )
call s:_('TSConstructor',blue ,'','bold'         )
call s:_('TSFuncMacro',blue ,'','bold'         )
call s:_('TSFuncBuiltin',blue ,'','bold'         )
call s:_('TSKeywordFunction',blue ,'','bold'         )
call s:_('TSParameter',orange ,'','italic'         )
call s:_('TSBoolean',green ,''         )
call s:_('TSInclude',magenta ,'bold'         )
call s:_('TSPunctBracket          ',ui_0 ,''         )
call s:_('cssImportant        ',red ,''     )
call s:_('cssIdentifier        ',red ,''     )
call s:_('cssIncludeKeyword        ',green ,''     )
call s:_('cssAttr        ',magenta ,''     )
call s:_('cssColor        ',yellow ,''     )
call s:_('cssClassNameDot        ',cyan ,''     )
call s:_('cssClassName        ',cyan ,''     )
call s:_('cssAttrComma        ',ui_0 ,''     )
call s:_('cssProp        ',ui_0 ,''     )
call s:_('javaScriptBoolean        ',cyan ,''     )
call s:_('phpStructure        ',cyan ,''     )
call s:_('markdownLinkText        ',cyan ,''     )
call s:_('Directory        ',cyan ,''     )
call s:_('GitGutterChangeDelete        ',red ,''     )
call s:_('GitGutterDelete        ',red ,''     )
call s:_('GitGutterChange        ',yellow ,''     )
call s:_('GitGutterAdd        ',green ,''     )
call s:_('SignColumn          ',ui_11 , )
call s:_('SignColumn          ',ui_11 , )
call s:_('SignColumn          ',ui_11 , )
call s:_('cursorim        ',ui_12 ,ui_7 )
call s:_('TabLine         ',ui_2 ,ui_9 )
call s:_('DiffAdd         ',green ,ui_9 )
call s:_('Underlined      ',ui_1 ,ui_12 )
call s:_('Macro           ',yellow ,''         )
call s:_('Structure       ',ui_7 ,''         )
call s:_('Directory       ',ui_8 ,''         )
call s:_('CTagsClass      ',ui_3 ,''         )
call s:_('SpellBad        ',ui_1 ,ui_12 )
call s:_('Repeat          ',green ,''         )
call s:_('MatchParen      ',yellow ,ui_4 )
call s:_('PMenuThumb      ',''          ,ui_4 )
call s:_('String          ',yellow ,''         )
call s:_('Tag             ',yellow ,''         )
call s:_('Constant        ',green ,''         )
call s:_('SpecialKey      ',ui_6 ,''         )
call s:_('PMenu           ',ui_2 ,ui_9 )
call s:_('Error           ',red ,ui_11 )
call s:_('SpellLocal      ',ui_1 ,ui_12 )
call s:_('Cursor          ',ui_12 ,ui_0 )
call s:_('DiffChange      ',ui_3 ,ui_9 )
call s:_('Type            ',cyan ,''         )
call s:_('Keyword         ',magenta ,'', 'bold'         )
call s:_('Exception       ',red ,''         )
call s:_('VertSplit       ',ui_8 ,ui_11 )
call s:_('SpellCap        ',ui_1 ,ui_12 )
call s:_('MoreMsg         ',yellow ,''         )
call s:_('Visual          ',ui_12 ,ui_1 )
call s:_('PreProc         ',red ,''         )
call s:_('FoldColumn      ',ui_12 ,ui_4 )
call s:_('Function        ',blue ,'', 'bold'         )
call s:_('Define          ',yellow ,''         )
call s:_('CursorColumn    ',ui_3 ,ui_9 )
call s:_('ModeMsg         ',ui_0 ,ui_12 )
call s:_('DiffDelete      ',magenta ,ui_9 )
call s:_('VisualNOS       ',ui_12 ,ui_1 )
call s:_('WarningMsg      ',red ,ui_11 )
call s:_('TabLineFill     ',ui_12 ,ui_9 )
call s:_('CursorLineNR    ',yellow ,''         )
call s:_('ColorColumn     ',''          ,ui_9 )
call s:_('CursorLine      ',''          ,ui_9 )
call s:_('Operator        ',magenta ,''         )
call s:_('Boolean         ',ui_3 ,''         )
call s:_('Number          ',purple ,''         )
call s:_('TabLineSel      ',ui_2 ,ui_11 )
call s:_('Character       ',ui_3 ,''         )
call s:_('Comment         ',ui_8 ,''         )
call s:_('SpellRare       ',ui_1 ,ui_12 )
call s:_('Statement       ',magenta ,''         )
call s:_('Delimiter       ',yellow ,''         )
call s:_('Search          ',ui_11 ,yellow )
call s:_('PMenuSel        ',green ,ui_9 )
call s:_('Label           ',yellow ,''         )
call s:_('StatusLine      ',ui_2 ,ui_9 )
call s:_('LineNr          ',ui_8 ,''         )
call s:_('Special         ',yellow ,''         )
call s:_('Todo            ',yellow ,''         )
call s:_('StorageClass    ',blue ,''         )
call s:_('Conditional     ',yellow ,''         )
call s:_('SpecialChar     ',yellow ,''         )
call s:_('Identifier      ',cyan ,''         )
call s:_('PMenuSbar       ',''          ,ui_5 )
call s:_('Debug           ',yellow ,''         )
call s:_('ErrorMsg        ',red ,ui_11 )
call s:_('DiffText        ',red ,ui_9 )
call s:_('NonText         ',ui_6 ,''         )
call s:_('StatusLineNC    ',ui_4 ,ui_9 )
call s:_('Float           ',ui_4 ,''         )
call s:_('Include         ',yellow ,''         )
call s:_('PreCondit       ',yellow ,''         )
call s:_('Folded          ',ui_12 ,ui_4 )
call s:_('Title           ',yellow ,''         )
call s:_('Typedef         ',ui_7 ,''         )
call s:_('SpecialComment  ',yellow ,''         )
call s:_('SignColumn      ',ui_12 ,ui_7 )
call s:_('WildMenu        ',''          ,ui_4 )
call s:_('IncSearch       ',ui_11 ,yellow )
" Sign Column
:exe  'highlight  SignColumn          guibg='.ui_11.''
:exe  'highlight  DiffAdd             guifg='.green.'       guibg='.ui_11.''
:exe  'highlight  DiffDelete          guifg='.red.'         guibg='.ui_11.''
:exe  'highlight  DiffChange          guifg='.yellow.'      guibg='.ui_11.''
:exe  'highlight  SignifyLineDelete   guibg='.ui_11.''
:exe  'highlight  SignifyLineChange   guibg='.ui_11.''


call s:_('Visual',         '', s:bg_visual)
call s:_('VisualBold',     '', s:bg_visual, 'bold')

" Transparent Background
highlight  SignColumn          guibg=NONE   ctermbg=NONE
highlight  Normal              guibg=NONE   ctermbg=NONE
highlight  DiffAdd             guibg=NONE   ctermbg=NONE
highlight  DiffDelete          guibg=NONE   ctermbg=NONE
highlight  DiffChange          guibg=NONE   ctermbg=NONE
highlight  SignifyLineDelete   guibg=NONE   ctermbg=NONE
highlight  SignifyLineChange   guibg=NONE   ctermbg=NONE

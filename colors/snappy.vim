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
" Grayscale
let  ui_0     =  '#F9F9F9'
let  ui_1     =  '#f9f9ff'
let  ui_2     =  '#eff0eb'
let  ui_3     =  '#e2e4e5'
let  ui_4     =  '#a1a6a8'
let  ui_5     =  '#848688'
let  ui_6     =  '#5e6c70'
let  ui_8     =  '#606580' "comment color
let  ui_9     =  '#3a3d4d' "underline of current line color
let  ui_11    =  '#282a36'
let  ui_12    =  '#192224'

let s:grey       = s:base4
let s:red        = '#ff2740'
let s:orange     = '#fd971f'
let s:green      = '#a6e22e'
let s:yellow     = '#f3f99d'
let s:blue       = '#57c7ff'
let s:cyan       = '#62d8f1'
let s:magenta    = '#fc1a70'
let s:violet     = '#ae81ff'
let s:pink     =  '#e379d8'
let s:white      = '#efefef'

let s:dark_blue  = '#2257A0'

let s:green_alt  = '#799033'

let s:bg             = '#282c34'
let s:bg_alt         = '#21242b'
let s:bg_highlight   = '#2E323C'
"let s:bg_popup       = color#Lighten('#3E4556', 0.3)
let s:bg_popup       = ui_9
let s:bg_widget      = s:bg
let s:bg_statusline  = s:bg_popup
let s:bg_visual      = s:base4
let s:bg_selection   = s:dark_blue
let s:bg_highlighted = '#4A4A45'

let s:fg           = '#f9f9ff'
let s:fg_alt       = '#5B6268'
let s:fg_widget    = s:fg
let s:fg_conceal   = s:base4
let s:fg_subtle    = s:base7
let s:fg_highlight = s:fg
let s:fg_linenr    = s:base4


let s:highlight       = s:blue
let s:highlight_color = s:base0


let s:bg_current = s:bg
let s:bg_visible = s:bg
let s:bg_other   = s:base1
let s:diff_info_fg  = s:blue
let s:diff_info_bg0 = '#D8EEFD'

call s:_('NvimTreeFolderName',                   s:blue,              '', 'bold'         )
call s:_('NvimTreeFolderIcon',                   s:blue,                 )

" Text levels                                                                {{{

let s:text_colors = {
\ 'Normal':  s:fg,
\ 'Info':    s:blue,
\ 'Success': s:green,
\ 'Warning': s:yellow,
\ 'Debug':   s:yellow,
\ 'Error':   s:red,
\ 'Special': s:violet,
\ 'Muted':   s:base7,
\}
for key in keys(s:text_colors)
  call s:_('Text' . key,          s:text_colors[key], '', '')
  call s:_('Text' . key . 'Bold', s:text_colors[key], '', 'bold')
endfor

call s:_('TabLine',             s:base7, s:bg_alt,  'bold')
call s:_('TabLineSel',          s:blue,  s:bg_current, 'bold')
call s:_('TabLineFill',         'none',  s:bg_other,   'bold')
call s:_('BufferCurrent',       s:base9,          s:bg_current,  'none')
call s:_('BufferCurrentIndex',  s:base6,          s:bg_current,  'none')
call s:_('BufferCurrentMod',    s:green,          s:bg_current,  'italic')
call s:_('BufferCurrentSign',   s:blue,           s:bg_current,  'none')
call s:_('BufferCurrentTarget', s:red,            s:bg_current,  'bold')

call s:_('BufferVisible',       s:base7,          s:bg_visible,  'none')
call s:_('BufferVisibleIndex',  s:base9,          s:bg_visible,  'none')
call s:_('BufferVisibleMod',    s:orange,         s:bg_visible,  'none')
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

call s:_('NormalPopup',                 s:fg_highlight,           s:bg_popup)
call s:_('NormalPopover',               s:fg_highlight,           s:bg_popup)
call s:_('NormalPopupPrompt',           s:fg_highlight,           s:bg_popup, 'bold')
call s:_('NormalPopupSubtle',           s:base6,                  s:bg_popup)
call s:_('Normal',                      ui_1,                     ui_11)
call s:_('SignColumn',                  ui_11,)
call s:_('TSPunctSpecial',              s:orange,                 '')
call s:_('TSConditional',               s:magenta,                '',                           'bold')
call s:_('TSConstructor',               s:blue,                   '',                           'bold')
call s:_('TSFuncMacro',                 s:blue,                   '',                           'bold')
call s:_('TSFuncBuiltin',               s:blue,                   '',                           'bold')
call s:_('TSKeywordFunction',           s:blue,                   '',                           'bold')
call s:_('TSParameter',                 s:orange,                 '',                           'italic')
call s:_('TSBoolean',                   s:green,                  '')
call s:_('TSInclude',                   s:magenta,                'bold')
call s:_('TSEnvironment',               s:magenta,                'bold')
call s:_('TSAttribute',                 s:cyan,                   'bold')
call s:_('TSPunctBracket',              ui_0,                     '')

call s:_('NormalPopup',                 s:fg_highlight,           s:bg_popup)
call s:_('NormalPopover',               s:fg_highlight,           s:bg_popup)
call s:_('Visual',                      '',                       s:bg_visual)
call s:_('VisualBold',                  '',                       s:bg_visual,                  'bold')

call s:_('cssImportant',                s:red,                    '')
call s:_('cssUnitDecorators',           s:magenta,                '')
call s:_('cssIdentifier',               s:green,                  '')
call s:_('cssIncludeKeyword',           s:green,                  '')
call s:_('cssAttr',                     s:magenta,                '')
call s:_('cssColor',                    s:magenta,                '')
call s:_('cssClassNameDot',             s:green,                  '')
call s:_('cssClassName',                s:green,                  '')
call s:_('cssAttrComma',                s:cyan,                   '',                           'bold')
call s:_('cssProp',                     s:cyan,                   '',                           'italic')
call s:_('cssAtKeyword',                s:magenta,                '',                           'bold')
call s:_('cssAtRule',                   s:magenta,                '',                           'bold')
call s:_('cssAtLogical',                s:magenta,                '',                           'bold')
call s:_('cssContentForPagedMediaProp', s:cyan,                   '',                           'bold')
call s:_('cssVendor',                   s:cyan,                   '',                           'bold')
call s:_('cssMediaType',                s:cyan,                   '',                           'bold')

call s:_('javaScriptBoolean',           s:cyan,                   '')
call s:_('phpStructure',                s:cyan,                   '')
call s:_('markdownLinkText',            s:cyan,                   '')
call s:_('Directory',                   s:cyan,                   '')
call s:_('GitGutterChangeDelete',       s:red,                    '')
call s:_('GitGutterDelete',             s:red,                    '')
call s:_('GitGutterChange',             s:yellow,                 '')
call s:_('GitGutterAdd',                s:green,                  '')
call s:_('SignColumn',                  ui_11)
call s:_('SignColumn',                  ui_11)
call s:_('SignColumn',                  ui_11)
call s:_('cursorim',                    ui_12,                    s:blue)
call s:_('TabLine',                     ui_2,                     ui_9)
call s:_('DiffAdd',                     s:green,                  ui_9)
call s:_('Underlined',                  ui_1,                     ui_12)
call s:_('Macro',                       s:yellow,                 '')
call s:_('Structure',                   s:blue,                     '')
call s:_('Directory',                   ui_8,                     '')
call s:_('CTagsClass',                  ui_3,                     '')
call s:_('SpellBad',                    s:red,                     '', 'italic')
call s:_('Repeat',                      s:green,                  '')
call s:_('MatchParen',                  s:yellow,                 ui_4)
call s:_('PMenuThumb',                  '',                       ui_4)
call s:_('String',                      s:yellow,                 '')
call s:_('Tag',                         s:yellow,                 '')
call s:_('Constant',                    s:green,                  '')
call s:_('SpecialKey',                  ui_6,                     '')
call s:_('PMenu',                       ui_2,                     ui_9)
call s:_('Error',                       s:red,                    ui_11)
call s:_('SpellLocal',                  ui_1,                     ui_12)
call s:_('Cursor',                      ui_12,                    ui_0)
call s:_('DiffChange',                  ui_3,                     ui_9)
call s:_('Type',                        s:cyan,                   '',        'bold')
call s:_('Keyword',                     s:magenta,                '',        'bold')
call s:_('Exception',                   s:red,                    '')
call s:_('VertSplit',                   ui_8,                     '')
call s:_('SpellCap',                    ui_1,                     ui_12)
call s:_('MoreMsg',                     s:yellow,                 '')
call s:_('Visual',                      ui_12,                    ui_1)
call s:_('PreProc',                     s:red,                    '')
call s:_('FoldColumn',                  ui_12,                    ui_4)
call s:_('Function',                    s:blue,                   '',       'bold')
call s:_('Define',                      s:yellow,                 '')
call s:_('CursorColumn',                ui_3,                     ui_9)
call s:_('ModeMsg',                     ui_0,                     ui_12)
call s:_('DiffDelete',                  s:magenta,                ui_9)
call s:_('VisualNOS',                   ui_12,                    ui_1)
call s:_('WarningMsg',                  s:red,                    ui_11)
call s:_('TabLineFill',                 ui_12,                    ui_9)
call s:_('CursorLineNR',                s:yellow,                 '')
call s:_('ColorColumn',                 '',                       ui_9)
call s:_('CursorLine',                  '',                       ui_9)
call s:_('Operator',                    s:magenta,                '')
call s:_('Boolean',                     ui_3,                     '')
call s:_('Number',                      s:violet,                   '')
call s:_('TabLineSel',                  ui_2,                     ui_11)                 
call s:_('Character',                   ui_3,                     '')
call s:_('Comment',                     ui_8,                     '',            'italic')
call s:_('SpellRare',                   ui_1,                     ui_12)
call s:_('Statement',                   s:magenta,                '')
call s:_('Delimiter',                   s:yellow,                 '')
call s:_('Search',                      ui_11,                    s:yellow)

call s:_('Label',                       s:yellow,                 '')
call s:_('StatusLine',                  ui_2,                     ui_9)
call s:_('LineNr',                      ui_8,                     '')
call s:_('Special',                     s:yellow,                 '')
call s:_('Todo',                        s:yellow,                 '')
call s:_('StorageClass',                s:blue,                   '')
call s:_('Conditional',                 s:yellow,                 '')
call s:_('SpecialChar',                 s:yellow,                 '')
call s:_('Identifier',                  s:cyan,                   '')
call s:_('PMenuSbar',                   '',                       ui_5)
call s:_('Debug',                       s:yellow,                 '')
call s:_('ErrorMsg',                    s:red,                    ui_11)
call s:_('DiffText',                    s:red,                    ui_9)
call s:_('NonText',                     ui_6,                     '')
call s:_('StatusLineNC',                ui_4,                     ui_9)
call s:_('Float',                       ui_4,                     '')
call s:_('Include',                     s:yellow,                 '')
call s:_('PreCondit',                   s:yellow,                 '')
call s:_('Folded',                      ui_12,                    ui_4)
call s:_('Title',                       s:yellow,                 '')
call s:_('Typedef',                     s:blue,                     '')
call s:_('SpecialComment',              s:yellow,                 '')
call s:_('SignColumn',                  ui_12,                    s:blue)
call s:_('WildMenu',                    '',                       ui_4)
call s:_('IncSearch',                   ui_11,                    s:yellow)
"Sig nColumn
call s:_('Visual',                      '',                       s:bg_visual)
call s:_('VisualBold',                  '',                       s:bg_visual,  'bold')

call s:_('Pmenu',                       s:fg,                     s:bg_popup)
call s:_('PmenuSel',                    s:highlight_color,        s:highlight)
call s:_('PmenuSelBold',                s:highlight_color,        s:highlight,  'bold')
call s:_('PmenuSbar',                   '',                       s:bg_alt)
call s:_('PmenuThumb',                  '#666660',                '#666660')
call s:_('Section',                     s:magenta,                '',           'bold')
call s:_('LspDiagnosticsDefaultHint', '#6eaeea')
call s:_('LspDiagnosticsDefaultWarning', 'Orange')
call s:_('LspDiagnosticsDefaultError', 'Red')
call s:_('LspDiagnosticsDefaultInformation', '#Deebfe')

highlight IndentBlanklineContextChar guifg=#848688 gui=nocombine
highlight CodiVirtualText guifg=red

" to give menu transparency
if exists('&pumblend')
  set pumblend=20
  set winblend=20
end
hi PmenuSel blend=0
" Additionnal/Common groups                                         {{{1

call s:_('DbgCurrent',           '#DEEBFE', '#345FA8', '')
call s:_('DbgBreakPt',           '',        '#4F0037', '')

" Jumping around {{{

call s:_('JumpTarget', s:red, '', 'bold')
call s:_('NormalFloat', s:fg, ui_9, 'bold')

hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen

hi link EasyMotionMoveHL Search
hi link EasyMotionIncSearch Search

hi!  link EasyMotionTargetDefault JumpTarget
hi!  link Sneak                   JumpTarget
hi!  link SneakPluginTarget       JumpTarget
hi!  link SneakStreakTarget       JumpTarget
hi!  link SneakStreakMask         EasyMotionShadeDefault
highlight link CompeDocumentation NormalFloat
" }}}

" Languages/Others                                                    {{{1

" Help                                                                      {{{2

hi! link helpURL           URL

" PHP                                                                       {{{2

hi! link phpFunctions Function
hi! link phpSuperglobal Identifier
hi! link phpQuoteSingle StringDelimiter
hi! link phpQuoteDouble StringDelimiter
hi! link phpBoolean Constant
hi! link phpNull Constant
hi! link phpArrayPair Operator
hi! link phpOperator Normal
hi! link phpRelation Normal
hi! link phpVarSelector Identifier

" Python                                                                    {{{2

hi! link pythonOperator Operator

" Ruby                                                                      {{{2

hi! link rubyRegexpDelimiter       RegexpDelimiter
hi! link rubyRegexp                Regexp
hi! link rubyRegexpSpecial         RegexpSpecial
hi! link rubyPredefinedIdentifier  PredefinedIdentifier

hi! link rubyClass              Class
hi! link rubyIdentifier         Identifier
hi! link rubyInstanceVariable   InstanceVariable
hi! link rubySymbol             Symbol
hi! link rubyControl            Control

hi! link rubySharpBang Comment
hi! link rubyConstant  Type
hi! link rubyFunction  Function

hi! link rubyGlobalVariable rubyInstanceVariable
hi! link rubyModule         rubyClass

hi! link rubyString                 String
hi! link rubyStringDelimiter        StringDelimiter
hi! link rubyInterpolationDelimiter Identifier


" Erlang                                                                    {{{2

hi! link erlangAtom rubySymbol
hi! link erlangBIF rubyPredefinedIdentifier
hi! link erlangFunction rubyPredefinedIdentifier
hi! link erlangDirective Statement
hi! link erlangNode Identifier

" CoffeeScript                                                              {{{2

hi! link coffeeRegExp rubyRegexp

" Lua & Moonscript'                                                         {{{2

hi! link luaOperator Conditional

hi! link moonObject     Type
hi! link moonSpecialOp  StringDelimiter
hi! link moonSpecialVar Identifier
hi! link moonObjAssign  StorageClass
hi! link moonObjAssign  StorageClass
hi! link moonConstant   Global

" Objective-C/Cocoa                  

hi! link objcClass Type
hi! link cocoaClass objcClass
hi! link objcSubclass objcClass
hi! link objcSuperclass objcClass
hi! link objcDirective rubyClass
hi! link cocoaFunction Function
hi! link objcMethodName Identifier
hi! link objcMethodArg Normal
hi! link objcMessageName Identifier

" Transparent Background
highlight  SignColumn          guibg=NONE   ctermbg=NONE
highlight  Normal              guibg=NONE   ctermbg=NONE
highlight  DiffAdd             guibg=NONE   ctermbg=NONE
highlight  DiffDelete          guibg=NONE   ctermbg=NONE
highlight  DiffChange          guibg=NONE   ctermbg=NONE
highlight  SignifyLineDelete   guibg=NONE   ctermbg=NONE
highlight  SignifyLineChange   guibg=NONE   ctermbg=NONE

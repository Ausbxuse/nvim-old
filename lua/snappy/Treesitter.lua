local Treesitter = {

    --[[ hi @comment.c guifg=Blue
    hi @comment.lua @guifg=DarkBlue
    hi link @comment.doc.java String
    @text.literal      Comment
    @text.reference    Identifier
    @text.title        Title
    @text.uri          Underlined
    @text.underline    Underlined
    @text.todo         Todo

    @comment           Comment
    @punctuation       Delimiter

    @constant          Constant
    @constant.builtin  Special
    @constant.macro    Define
    @define            Define
    @macro             Macro
    @string            String
    @string.escape     SpecialChar
    @string.special    SpecialChar
    @character         Character
    @character.special SpecialChar
    @number            Number
    @boolean           Boolean
    @float             Float

    @function          Function
    @function.builtin  Special
    @function.macro    Macro
    @parameter         Identifier
    @method            Function
    @field             Identifier
    @property          Identifier
    @constructor       Special

    @conditional       Conditional
    @repeat            Repeat
    @label             Label
    @operator          Operator
    @keyword           Keyword
    @exception         Exception

    @variable          Identifier
    @type              Type
    @type.definition   Typedef
    @storageclass      StorageClass
    @structure         Structure
    @namespace         Identifier
    @include           Include
    @preproc           PreProc
    @debug             Debug
    @tag               Tag ]]

  -- TSComment            = { fg = C.ui_4 },
  -- TSAnnotation         = { fg = C.purple },
  TSAttribute             = {fg = C.cyan},
  ["@constructor"]           = {fg = C.blue,    style = 'bold'},
  -- TSType               = { fg = C.purple },
  -- TSTypeBuiltin        = { fg = C.purple },
  ["@conditional"]           = {fg = C.magenta, style = 'bold'},
  -- TSException          = { fg = C.blue },
  ["@include"]               = {fg = C.magenta},
  -- TSKeyword            = { fg = C.blue },
  TSEnvironment           = {fg = C.magenta},
  TSKeywordFunction       = {fg = C.blue,    style = 'bold'},
  TSLabel                 = {fg = C.magenta, style = 'bold'},
  TSMath                  = {fg = C.purple,  style = 'bold'},
  -- TSNamespace          = { fg = C.blue },
  -- TSRepeat             = { fg = C.blue },
  ["@constant"]              = {fg = C.green},
  ["@constant.builtin"]          = {fg = C.green},
  -- TSFloat              = { fg = C.red },
  -- TSNumber             = { fg = C.red },
  ["@boolean"]               = {fg = C.green},
  -- TSCharacter          = { fg = C.green },
  -- TSError              = { fg = C.red },
  -- TSFunction           = { fg = C.yellow },
  ["@function"]           = {fg = C.blue,    style = 'bold'},
  ["@function.builtin"]           = {fg = C.blue,    style = 'bold'},
  ["@function.macro"]           = {fg = C.blue,    style = 'bold'},
  -- TSMethod             = { fg = C.yellow },
  -- TSConstMacro         = { fg = C.cyan },
  TSFuncMacro             = {fg = C.blue,    style = 'bold'},
  ["@variable"]           = { fg = C.white },
  TSVariableBuiltin       = {fg = C.cyan},
  ["@property"]           = { fg = C.cyan },
  -- TSOperator           = { fg = C.blue },
  -- TSField              = { fg = C.white },
  ["@parameter"]             = {fg = C.orange,  style = 'italic'},
  -- TSParameterReference = { fg = C.white },
  -- TSSymbol             = { fg = C.white },
  -- TSText               = { fg = C.fg },
  -- TSPunctDelimiter     = { fg = C.ui_4 },
  -- TSTagDelimiter       = { fg = C.ui_4 },
  TSPunctBracket          = {fg = C.ui_0},
  TSPunctSpecial          = {fg = C.orange},
  -- TSString             = { fg = C.green },
  -- TSStringRegex        = { fg = C.green },
  -- TSStringEscape       = { fg = C.green },
  ["@tag"]                = { fg = C.blue },
  -- TSEmphasis           = {                style = "italic" },
  -- TSUnderline          = {                style = "underline" },
  ["@text.title.1.marker.markdown"]                = { fg = C.cyan },
  ["@text.title.2.marker.markdown"]                = { fg = C.magenta },
  ["@text.title.3.marker.markdown"]                = { fg = C.purple },
  ["@text.title.4.marker.markdown"]                = { fg = C.cyan },
  ["@text.title.5.marker.markdown"]                = { fg = C.magenta },
  ["@text.title.6.marker.markdown"]                = { fg = C.purple },
  Headline1               = { fg = C.cyan,    bg = C.ui_10, style = "bold"},
  Headline2               = { fg = C.magenta, bg = C.ui_10, style = "bold"},
  Headline3               = { fg = C.purple,  bg = C.ui_10,style = "bold"},
  Headline4               = { fg = C.cyan,    bg = C.ui_10, },
  Headline5               = { fg = C.magenta, bg = C.ui_10,  },
  Headline6               = { fg = C.purple,  bg = C.ui_10,  },
  CodeBlock               = { bg = C.ui_9,    bg = C.ui_10,  },
  Dash                    = { bg = C.ui_9},
  Quote                   = { fg = "#8bc56f", bg = "#1b2816" },

  -- TSTitle              = { fg = C.blue,   style = "bold" },
  -- TSLiteral            = { fg = C.green },
  -- TSURI                = { fg = C.cyan,   style = "underline" },
  -- TSKeywordOperator    = { fg = C.blue },
  -- TSStructure          = { fg = C.purple},
  -- TSStrong             = { fg = C.yellow },
  -- TSQueryLinterError   = { fg = C.orange },
}

return Treesitter

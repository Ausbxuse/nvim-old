let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
set termguicolors
syntax on
"hi Comment cterm=italic
colorscheme snappy
"colorscheme vim-monokai-tasty
hi LineNr ctermbg=NONE guibg=NONE
set hlsearch
hi Search guibg=Yellow
hi Search guifg=Black

set termguicolors
set ssop=sesdir

"autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
set t_ZH=[3m
set t_ZR=[23m
set nocindent
set scrolloff=5
set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set wrap linebreak nolist                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed 
set pumheight=10                        " Makes popup menu smaller
"set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=1
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically e below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
"set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs 
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=200                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set incsearch
set guifont=Hack\ Nerd\ Font
set relativenumber
set ic
set nospell
"set list listchars=tab:>\ ,trail:-,eol:↵             "indicate blank space and return
autocmd Filetype python setlocal tabstop=4
autocmd Filetype html setlocal tabstop=4
autocmd Filetype html setlocal shiftwidth=4
autocmd Filetype lua setlocal tabstop=4
" when running at every change you may want to disable quickfix
"let g:prettier#quickfix_enabled = 0

"autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
" This function does the following:
" <>|<>  with <cr> to get
" <>
"    |
" <>
function! Expander()
  let line   = getline(".")
  let col    = col(".")
  let first  = line[col-2]
  let second = line[col-1]
  let third  = line[col]

  if first ==# ">"
    if second ==# "<" && third ==# "/"
      return "\<CR>\<C-o>==\<C-o>O"

    else
      return "\<CR>"

    endif

  else
    return "\<CR>"

  endif

endfunction

autocmd FileType html inoremap <expr> <CR> Expander()

au BufRead *.vim setlocal foldmethod=marker
autocmd Filetype lua setlocal foldmethod=marker
autocmd TermOpen * startinsert


" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set autochdir                           " Your working directory will always be the same as your working directory
" set foldcolumn=2                        " Folding abilities
au FileType vim setlocal fo-=c fo-=r fo-=o
" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" Remove trailing whitespaces automatically before save
" augroup strip_ws
"   autocmd BufWritePre * call utils#stripTrailingWhitespaces()
" augroup END
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

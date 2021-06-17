"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

" Plugins
"{{{ Plugins
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'connorholyday/vim-snazzy'
  Plug 'sainnhe/sonokai'
  Plug 'romgrk/doom-one.vim'
  Plug 'chuling/equinusocio-material.vim'
  " Plug 'camspiers/animate.vim'
  " Plug 'camspiers/lens.vim'
"  Plug 'vim-syntastic/syntastic'
  Plug 'godlygeek/tabular'
  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  Plug 'romgrk/barbar.nvim'
  "Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
  Plug 'kyazdani42/nvim-web-devicons'
"  Plug 'w0rp/ale'
  Plug 'plasticboy/vim-markdown'
  Plug 'Yggdroot/indentLine'
"  Plug 'glepnir/indent-guides.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
  "Plug 'glts/vim-radical' " Convert binary, hex, etc..
  Plug 'andrejlevkovitch/vim-lua-format'
  Plug 'asvetliakov/vim-easymotion'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'preservim/tagbar'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'vim-airline/vim-airline'
"  Plug 'vim-airline/vim-airline-themes'
  "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'voldikss/vim-floaterm'
  Plug 'mhinz/vim-startify'
  Plug 'liuchengxu/vista.vim'
  "Plug 'liuchengxu/clap.vim'
  "Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
  Plug 'liuchengxu/vim-which-key'
  Plug 'junegunn/goyo.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'neomake/neomake'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'https://github.com/vimwiki/vimwiki.git'
  Plug 'preservim/nerdtree'
  Plug 'metakirby5/codi.vim'
  Plug 'vim-python/python-syntax'
  Plug 'justinmk/vim-sneak'
  "Plug 'patstockwell/vim-monokai-tasty'
call plug#end()

" Automatically install missing plugins on startup
"autocmd VimEnter *
"  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \|   PlugInstall --sync | q
"  \| endif
set termguicolors
lua require 'colorizer'.setup()
"}}}

" Settings
"{{{ Settings
set ssop=sesdir
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
autocmd Filetype python set tabstop=4
au BufRead init.vim set foldmethod=marker
autocmd Filetype lua set foldmethod=marker
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
"}}}

" Mappings
"{{{ Mappings
let mapleader=" "
tnoremap <Esc> <C-\><C-n>
nnoremap <Space> <Nop>
" Better window navigation
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l
" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Compile and run C++/Python programs
map <leader>r :call Compile()<CR>

func! Compile()
  exec "w"
  if &filetype == "cpp"
    exec 'sp | res -10 | te g++ -Wall % && ./a.out'
  elseif &filetype == 'c'
    exec 'sp | res -10 | te gcc -Wall % && ./a.out'
  elseif &filetype == 'python'
    exec 'sp | res -10 | te python3 %'
  elseif &filetype == 'rust'
    exec 'sp | res -10 | te cargo run'
  elseif &filetype == 'lua'
    exec 'sp | res -10 | te lua %'
  elseif &filetype == 'java'
    exec 'sp | res -10 | te javac % && java %<'
"  elseif &filetype == 'vimwiki'
"    exec "MarkdownPreview"
"  else
"    exec "MarkdownPreview"
  endif
endfunc

"autocmd filetype cpp nnoremap <leader>r :w <bar> te g++ -Wall % && ./a.out<CR>i
"autocmd filetype python nnoeemap <silent><leader>r :w <bar> :exec 'te python3' shellescape(@%, 1)<CR>i
nnoremap <C-n> :NERDTreeToggle<CR>
" autocmd VimEnter * NERDTree | wincmd p
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
nmap <silent><Esc> :nohl<CR>
nnoremap <F7> :setlocal spell! spell?<CR>
nnoremap <leader>n :r! date<CR>i*<Esc>$a*<CR><Esc>

"}}}

" Markdown Settings
"{{{ Markdown Settings
" Keymappings in insert mode
autocmd Filetype markdown,rmd normal zR
autocmd Filetype markdown,rmd setlocal nospell
autocmd FileType markdown,rmd exec 'setlocal nospell'
autocmd Filetype markdown,rmd inoremap ;f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown,rmd inoremap ;n ---<Enter><Enter>
autocmd Filetype markdown,rmd inoremap ;b **** <++><Esc>F*hi
autocmd Filetype markdown,rmd inoremap ;s ~~~~<++><Esc>F~hi
autocmd Filetype markdown,rmd inoremap ;i ** <++><Esc>F*i
autocmd Filetype markdown,rmd inoremap ;d `` <++><Esc>F`i
autocmd Filetype markdown,rmd inoremap ;c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown,rmd inoremap ;h ====<Space><++><Esc>F=hi
autocmd Filetype markdown,rmd inoremap ;p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ;a [](<++>) <++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ;1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ;2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ;3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ;4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ;j \|--------
" Keymappings in normal mode
autocmd Filetype markdown,rmd nnoremap ;s y$d$i ~~<Esc>pa~~<Esc>0
autocmd Filetype markdown,rmd nnoremap \s 0f~xxf~xx0

" Markdown preview settings
autocmd Filetype markdown map <leader>r :MarkdownPreview<CR>

function! s:spell_check_current()
  setlocal spell
  normal z=
  setlocal nospell
endfunction
nnoremap <leader>s :call <SID>spell_check_current()<CR>
"highlight clear SpellRare 
"highlight clear SpellBad 
"highlight clear SpellCap 
"highlight clear SpellLocal
nnoremap <F7> :setlocal spell! spell?<CR>
autocmd BufRead,BufNewFile *.md let b:sleuth_automatic=0
autocmd BufRead,BufNewFile *.md setlocal nospell
autocmd BufEnter *.md set conceallevel=0

"}}}

" Theme
"{{{ Theme
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:material_theme_style = 'darker'
let g:material_terminal_italics=1

set termguicolors
syntax on
hi Comment cterm=italic

let ayucolor="mirage"
let g:SnazzyTransparent=1

colorscheme snazzy
"colorscheme doom-one
hi LineNr ctermbg=NONE guibg=NONE
set hlsearch
hi Search guibg=Yellow
hi Search guifg=Black

"let g:airline_powerline_fonts=1
"let g:airline#extensions#tabline#fnamemod = ':.'
"let g:airline#extensions#tabline#fnamecollapse = 0
""let g:airline_theme='powerlineish'
""let g:airline_theme = 'palenight'
"let g:airline_theme = 'base16_snazzy'
"let g:airline#extensions#tabline#enabled = 1


"}}} 

" Plugin Config
"{{{ Plug Config

" Plugin: Galaxyline -------------------------- {{{

" }}}

" Plugin: Galaxyline -------------------------- {{{

function! ConfigStatusLine()
  lua require('plugins.status-line')
endfunction

augroup status_line_init
  autocmd!
  autocmd VimEnter * call ConfigStatusLine()
augroup END

" }}}
" ale
""{{{
"let g:ale_linters = {'python': ['pylint']}
"let g:ale_fixers = {'*': [], 'python': ['black']}
"let g:ale_fix_on_save = 1
""}}}

"" lua formatter
"{{{
autocmd FileType lua nnoremap <buffer> <c-k> :call LuaFormat()<cr>
"autocmd BufWrite *.lua call LuaFormat()
"}}}

"" indentline
"{{{
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
"let g:indentLine_bgcolor_term = 220
let g:indentLine_char = '▏'
"let g:indentLine_char_list = ['▏', '¦', '┆', '┊']
let g:indentLine_setColors = 2
"let g:indentLine_conceallevel = 1
let g:indentLine_enabled = 0
"}}}

" rnvimr
"{{{2 rnvimr
" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

let g:rnvimr_draw_border = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_pick_enable = 1

" Make Neovim to wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_bw_enable = 1

" nmap <leader>r :RnvimrToggle<CR>

let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'
            " \ --cmd="set draw_borders separators"'

" let g:rnvimr_layout = { 'relative': 'editor',
"             \ 'width': float2nr(round(0.6 * &columns)),
"             \ 'height': float2nr(round(0.6 * &lines)),
"             \ 'col': float2nr(round(0.2 * &columns)),
"             \ 'row': float2nr(round(0.2 * &lines)),
"             \ 'style': 'minimal' }

let g:rnvimr_presets = [
            \ {'width': 0.800, 'height': 0.800}]
"}}}2

" fzf
"{{{2 fzf
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1

" map <C-f> :Files<CR>
" map <leader>b :Buffers<CR>
" nnoremap <leader>g :Rg<CR>
" nnoremap <leader>t :Tags<CR>
" nnoremap <leader>m :Marks<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--inline-info'
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
"-g '!{node_modules,.git}'

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--inline-info']}), <bang>0)


" Get text in files with Rg
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   "rg --column --line-number --no-heading --color=always --smart-case --glob '!.git/**' ".shellescape(<q-args>), 1,

 " Make Ripgrep ONLY search file contents and not filenames
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%', '?'),
  \   <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
"}}}2

" rainbow
"{{{2 rainbow
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

autocmd FileType * RainbowParentheses

"}}}2

" codi
"{{{2 codi
highlight CodiVirtualText guifg=red

let g:codi#virtual_text_prefix = "❯ "

let g:codi#aliases = {
                   \ 'javascript.jsx': 'javascript',
                   \ }
"}}}2

" quickscope
"{{{2 quickscope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#eF5F70' gui=underline ctermfg=81 cterm=underline
let g:qs_max_chars=150
"}}}2

" vim-wiki
"{{{2 vim-wiki
" VimWiki
  let g:vimwiki_key_mappings =
    \ {
    \   'all_maps': 1,
    \   'global': 1,
    \   'headers': 1,
    \   'text_objs': 1,
    \   'table_format': 1,
    \   'table_mappings': 1,
    \   'lists': 1,
    \   'links': 1,
    \   'html': 1,
    \   'mouse': 1,
    \ }

" Filetypes enabled for
let g:vimwiki_filetypes = ['markdown']

let g:vimwiki_list = [{'auto_diary_index': 1}]
let g:vimwiki_list = [{'path': '~/Documents/wiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" let g:vimwiki_auto_header = 0
" let g:vimwiki_markdown_header_style = 1
" let g:vimwiki_tags_header_level = 1
" let g:vimwiki_tags_header = 'Generated Tags'
" let g:vimwiki_links_header_level = 1
" let g:vimwiki_links_header = 'Generated Links'
" let g:vimwiki_auto_chdir = 0
" let g:vimwiki_map_prefix = '<Leader>w'
" let g:vimwiki_toc_link_format = 0
" let g:vimwiki_toc_header_level = 1
" let g:vimwiki_toc_header = 'Contents'
" let g:vimwiki_autowriteall = 1
" let g:vimwiki_conceal_pre = 0
" let g:vimwiki_conceal_onechar_markers = 1
" let g:vimwiki_conceallevel = 2
" let g:vimwiki_user_htmls = ''
" let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr'
" let g:vimwiki_html_header_numbering_sym = ''
" let g:vimwiki_html_header_numbering = 0
" let g:vimwiki_dir_link = ''
" let g:vimwiki_markdown_link_ext = 0
" let g:vimwiki_create_link = 1
" let g:vimwiki_use_calendar = 1
" let g:vimwiki_text_ignore_newline = 1
" let g:vimwiki_list_ignore_newline = 1
" let g:vimwiki_folding = ''
" let g:vimwiki_listsym_rejected = '✗'
" let g:vimwiki_listsyms = '✗○◐●✓'
" let g:vimwiki_global_ext = 1
" let g:vimwiki_hl_cb_checked = 0




let g:vimwiki_diary_months = {
      \ 1: 'January', 2: 'February', 3: 'March',
      \ 4: 'April', 5: 'May', 6: 'June',
      \ 7: 'July', 8: 'August', 9: 'September',
      \ 10: 'October', 11: 'November', 12: 'December'
      \ }
"}}}2

" sneak
"{{{2 sneak
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" imediately move tot the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" Cool prompt
let g:sneak#prompt = '🔎 '

" I like quickscope better for this since it keeps me in the scope of a single line
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T


" Useful info

" s<Enter>                 | Repeat the last Sneak.
" S<Enter>                 | Repeat the last Sneak, in reverse direction.

" silent! call repeat#set("\<Plug>Sneak_s", v:count)
" silent! call repeat#set("\<Plug>Sneak_S", v:count)
"}}}2

" coc
"{{{2 coc
  let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-actions',
    \ 'coc-lists',
    \ 'coc-emmet',
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-floaterm',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-emoji',
    \ 'coc-cssmodules',
    \ 'coc-yaml',
    \ 'coc-python',
    \ 'coc-explorer',
    \ 'coc-svg',
    \ 'coc-prettier',
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yank',
    \ 'coc-json',
    \ 'coc-marketplace',
    \ 'coc-java',
    \ 'coc-rust-analyzer',
    \ 'coc-lua',
    \ ]

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <leader>k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
" nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
" TODO add these to which key
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Explorer
let g:coc_explorer_global_presets = {
\   'floating': {
\      'position': 'floating',
\   },
\   'floatingLeftside': {
\      'position': 'floating',
\      'floating-position': 'left-center',
\      'floating-width': 30,
\   },
\   'floatingRightside': {
\      'position': 'floating',
\      'floating-position': 'right-center',
\      'floating-width': 30,
\   },
\   'simplify': {
\     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }
"nmap <silent> <space>e :CocCommand explorer<CR>
" nnoremap <silent> <leader>e :CocCommand explorer<CR>
" nmap <space>f :CocCommand explorer --preset floatingRightside<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" Snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
"}}}2

" goyo
"{{{2 goyo
" nmap <silent> <leader>z :Goyo<CR>
"}}}2

" startify
"{{{2 startify

"let g:startify_custom_header = [
"        \ '      ___              __                       ',
"        \ '     /   | __  _______/ /_  _  ____  __________ ',
"        \ '    / /| |/ / / / ___/ __ \| |/_/ / / / ___/ _ \',
"        \ '   / ___ / /_/ (__  ) /_/ />  </ /_/ (__  )  __/',
"        \ '  /_/  |_\__,_/____/_.___/_/|_|\__,_/____/\___/ ',
"        \]

let g:startify_custom_header=[
      \'   _           _                      _ ',
      \'           ▕                      ',
      \'▕ ███       ▕│█     ___   ___        ',
      \'▕││███     ▕│███▕│         ██   ██ ',
      \'▕││  ███   ▕│███▕│▕│ ▁ ▕│    ▕│██     ',
      \'▕││  ▕│███ ▕│███▕│▕│   ▕│    ▕│██  ◢◣  ◢ ',
      \'▕││  ▕│  ███│███▕│  ▁▁  ▁   ██   ▜█ ██ ',
      \'   ▕│    ████      ‾‾    ‾        ',
      \'   ▕│                             ',
      \'      ‾                               ‾ ']

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'a': '~/.config/awesome/rc.lua' },
            \ { 't': '~/Documents/private/todo.md' },
            \ ]

let g:startify_enable_special = 0
"}}}2

" floaterm
"{{{2 floaterm

" let g:floaterm_wintype='normal'
" let g:floaterm_height=6

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
"}}}2

" vista
"{{{2 vista
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']

let g:vista#renderer#enable_icon = 1

let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
"}}}2

" easymotion
"{{{2 easymotion
" let g:asyMotion_do_mapping = 0 " Disable default mappings
" " Turn on case-insensitive feature
" let g:EasyMotion_smartcase = 1

" " JK motions: Line motions
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)

" nmap s <Plug>(easymotion-s2)
" nmap t <Plug>(easymotion-t2)

" TODO add separate section for vscode

" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" nmap S <Plug>(easymotion-overwin-t)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen

hi link EasyMotionMoveHL Search
hi link EasyMotionIncSearch Search

"Lower case finds upper & lower case but upper case only finds upper case
let g:EasyMotion_smartcase = 1
"}}}2

"}}}1

let g:minimap_auto_start = 0

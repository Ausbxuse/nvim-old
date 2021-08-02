"{{{ indent_blankline
"let g:indent_blankline_char_list = ['|', '¦', '┆', '┊']
set colorcolumn=99999 " to fix ghost highlliting bug
let g:indent_blankline_char = '▏'
let g:indent_blankline_debug = v:true
let g:indent_blankline_filetype_exclude = ['help', 'dashboard', 'man', 'manual', 'manpage', 'startify']
"let g:indent_blankline_char_highlight_list = ['#ff2740', '#fd971f', '#ffd242', '#a6e22e', '#66d9ef', #61aeee', '#c678dd']
"}}}

" Plugin: Galaxyline -------------------------- {{{

function! ConfigStatusLine()
  lua require('plugins.status-line')
endfunction

augroup status_line_init
  autocmd!
  autocmd VimEnter * call ConfigStatusLine()
augroup END

" }}}

"{{{ lua formatter
autocmd FileType lua nnoremap <buffer> <c-k> :call LuaFormat()<cr>
"autocmd BufWrite *.lua call LuaFormat()
"}}}

"{{{ rnvimr
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
"}}}

"{{{ codi
highlight CodiVirtualText guifg=red

let g:codi#virtual_text_prefix = "❯ "

let g:codi#aliases = {
                   \ 'javascript.jsx': 'javascript',
                   \ }
"}}}

"{{{ emmet-vim
  let g:user_emmet_mode='n'
  let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall
  let g:user_emmet_leader_key=','
"}}}

"{{{ vim-wiki
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
"}}}

"{{{ startify

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

"let g:startify_custom_header=[
"\'\033[48;5;0m                                              \033[38;2;167;201;171m'
"\'       \033[38;2;31;107;152m███████████           \033[38;2;57;108;63m█████\033[38;2;167;201;171m      ██'
"\'      \033[38;2;34;115;163m███████████             \033[38;2;61;116;68m█████ '
"\'      \033[38;2;36;122;174m███████\033[48;5;0m██\033[38;2;20;69;110m\033[38;2;122;187;225m███████ ███\033[38;2;65;124;72m████████ \033[38;2;152;192;157m███   ███████'
"\'     \033[38;2;38;130;184m█████████\033[38;2;132;191;226m███████\033[48;5;0m ████\033[38;2;69;132;76m████████ \033[38;2;160;196;164m█████ ██████████████'
"\'    \033[38;2;40;138;195m█████████\033[38;2;142;196;228m█████\033[48;5;0m\033[38;2;20;69;110m██\033[38;2;142;196;228m██████\033[38;2;73;140;81m███████ \033[38;2;167;201;171m█████ █████ ████ █████'
"\'  \033[38;2;43;145;206m███████████\033[38;2;151;200;229m█████████████████\033[38;2;77;147;86m██████ \033[38;2;175;205;179m█████ █████ ████ █████'
"\' \033[38;2;45;153;217m██████  ███ \033[38;2;160;204;231m█████████████████ \033[38;2;81;155;90m████ \033[38;2;183;209;186m█████ █████ ████ ██████'
"\' \033[38;2;20;69;110m██████   ██  ███████████████   \033[38;2;46;78;42m██ █████████████████'
"\'\033[48;2;20;20;40m \033[38;2;11;39;63m██████   ██  ███████████████   \033[38;2;25;42;23m██ █████████████████ \033[48;5;0m']
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
"}}}

"{{{ vista
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']

let g:vista#renderer#enable_icon = 1

let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
"}}}

"{{{ easymotion
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
"}}}

"{{{ lsp-config
" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.hover()<CR>
"nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.html lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.cpp lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 100)
"}}}

"{{{ dashboard
let g:dashboard_default_executive = 'telescope'

let g:dashboard_custom_header=[
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
"let g:dashboard_custom_header=[
"\'\033[48;5;0m                                              \033[38;2;167;201;171m'
"\'       \033[38;2;31;107;152m███████████           \033[38;2;57;108;63m█████\033[38;2;167;201;171m      ██'
"\'      \033[38;2;34;115;163m███████████             \033[38;2;61;116;68m█████ '
"\'      \033[38;2;36;122;174m███████\033[48;5;0m██\033[38;2;20;69;110m\033[38;2;122;187;225m███████ ███\033[38;2;65;124;72m████████ \033[38;2;152;192;157m███   ███████'
"\'     \033[38;2;38;130;184m█████████\033[38;2;132;191;226m███████\033[48;5;0m ████\033[38;2;69;132;76m████████ \033[38;2;160;196;164m█████ ██████████████'
"\'    \033[38;2;40;138;195m█████████\033[38;2;142;196;228m█████\033[48;5;0m\033[38;2;20;69;110m██\033[38;2;142;196;228m██████\033[38;2;73;140;81m███████ \033[38;2;167;201;171m█████ █████ ████ █████'
"\'  \033[38;2;43;145;206m███████████\033[38;2;151;200;229m█████████████████\033[38;2;77;147;86m██████ \033[38;2;175;205;179m█████ █████ ████ █████'
"\' \033[38;2;45;153;217m██████  ███ \033[38;2;160;204;231m█████████████████ \033[38;2;81;155;90m████ \033[38;2;183;209;186m█████ █████ ████ ██████'
"\' \033[38;2;20;69;110m██████   ██  ███████████████   \033[38;2;46;78;42m██ █████████████████'
"\'\033[48;2;20;20;40m \033[38;2;11;39;63m██████   ██  ███████████████   \033[38;2;25;42;23m██ █████████████████ \033[48;5;0m']

let g:dashboard_session_directory = '~/.cache/nvim/session'
let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC f h',
\ 'find_file'          : 'SPC f f',
\ 'new_file'           : 'SPC c n',
\ 'change_colorscheme' : 'SPC t c',
\ 'find_word'          : 'SPC f a',
\ 'book_marks'         : 'SPC f b',
\ }
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
"autocmd FileType dashboard DashboardFindHistory
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
lua << EOF
vim.g.dashboard_preview_command = 'beauticat'
--vim.g.dashboard_preview_pipeline = 'lolcat'
vim.g.dashboard_preview_file = "~/etst"
vim.g.dashboard_preview_file_height = 12
vim.g.dashboard_preview_file_width = 70
EOF
"}}}

"{{{ auto completion(compe)
set completeopt=menuone,noselect
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
luafile ~/.config/nvim/lua/plugins/compe.lua
"}}}

"{{{ telescope
lua << EOF
require("telescope").setup {
  defaults = {
    -- Your defaults config goes in here
  },
  pickers = {
    -- Your special builtin config goes in here
    buffers = {
      sort_lastused = true,
      theme = "ivy",
      previewer = true,
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
          -- or right hand side can also be a the name of the action as string
          ["<c-d>"] = "delete_buffer",
        },
        n = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        }
      }
    },
    find_files = {
      theme = "ivy"
    }
  },
  extensions = {
    -- your extension config goes in here
  }
}
EOF
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"}}}

" {{{  colorizer
lua require 'colorizer'.setup()
"}}}

" {{{  gitsigns
lua require('gitsigns').setup()
"}}}

"{{{ minimap
let g:minimap_auto_start = 0
"}}}

" {{{ treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
    colors = {
      "#ff2740",
      "#fd971f",
      "#ffd242",
      "#a6e22e",
      "#66d9ef",
      "#61aeee",
      "#c678dd"
    },
  },
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  --ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "html", "css"},  -- list of language that will be disabled
  },
  indent = {
    enable = true
  },
}
EOF
"}}}

" {{{ lsp config
sign define LspDiagnosticsSignError text= texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text=  texthl=LspDiagnosticsSignWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text= texthl=LspDiagnosticsSignInformation linehl= numhl=
sign define LspDiagnosticsSignHint text=  texthl=LspDiagnosticsSignHint linehl= numhl=
highlight LspDiagnosticsDefaultHint guifg='#6eaeea'
"}}}

"{{{ vimspector
let g:vimspector_enable_mappings = 'HUMAN'
"}}}

"{{{ auto-pairs
lua << EOF
require('nvim-autopairs').setup{}
require("nvim-autopairs.completion.compe").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true -- it will auto insert `(` after select function or method item
})
EOF
"}}}

"{{{ prettier
let g:prettier#exec_cmd_async = 1
autocmd BufWritePre *.html PrettierAsync
autocmd BufWritePre *.css PrettierAsync
autocmd BufWritePre *.scss PrettierAsync
autocmd BufWritePre *.js PrettierAsync

"}}}

" {{{ toggle term
lua << EOF
require("toggleterm").setup{
  open_mapping = [[<c-\>]],
  shade_terminals = false,
  float_opts = {
    border = 'curved',
    winblend = 8,
  }
}

EOF
"}}}

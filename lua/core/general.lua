--[[ vim.g.rnvimr_ex_enable = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_pick_enable = 1
vim.g.rnvimr_bw_enable = 1 ]] vim.g.user_emmet_mode = 'n'
vim.g.user_emmet_install_global = 0
vim.g.user_emmet_leader_key = ','
vim.cmd([[autocmd FileType html,css,markdown,md EmmetInstall]])

vim.g.EasyMotion_smartcase = 1

vim.g["codi#virtual_text_prefix"] = "❯ "

vim.cmd([[ let g:codi#aliases = {'javascript.jsx': 'javascript',} ]])

vim.g.startify_custom_header = {
  [[       ___              __                          ]],
  [[      /   | __  _______/ /_  _  ____  __________    ]],
  [[     / /| |/ / / / ___/ __ \| |/_/ / / / ___/ _ \   ]],
  [[    / ___ / /_/ (__  ) /_/ />  </ /_/ (__  )  __/   ]],
  [[   /_/  |_\__,_/____/_.___/_/|_|\__,_/____/\___/    ]]
}

vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1

vim.g.webdevicons_enable_startify = 1

vim.g.vista_default_executive = 'nvim_lsp'
vim.g.neovide_transparency = 0.8

vim.cmd([[
function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_lists = [{ 'type': 'files',     'header': ['   Files']                        }, { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] }, { 'type': 'sessions',  'header': ['   Sessions']                     }, { 'type': 'bookmarks', 'header': ['   Bookmarks']                    }, ]

let g:startify_bookmarks = [{ 'i': '~/.config/nvim/init.vim' },{ 'a': '~/.config/awesome/rc.lua' },{ 't': '~/Documents/private/todo/todo.md' },]
let g:neovide_transparency = 0.8
]])

--[[ vim.g.startify_bookmarks = {
  { i = '~/.config/nvim/init.vim' },
  { a = '~/.config/awesome/rc.lua' },
  { t = '~/Documents/private/todo.md' },
} ]]

vim.g.startify_enable_special = 0

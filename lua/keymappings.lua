-- Map leader key to space
--
local utils = {}
function utils.add_keymap(mode, opts, keymaps)
  for _, keymap in ipairs(keymaps) do
    vim.api.nvim_set_keymap(mode, keymap[1], keymap[2], opts)
  end
end

function utils.add_keymap_normal_mode(opts, keymaps)
  utils.add_keymap("n", opts, keymaps)
end

function utils.add_keymap_visual_select_mode(opts, keymaps)
  utils.add_keymap("v", opts, keymaps)
end

function utils.add_keymap_visual_mode(opts, keymaps)
  utils.add_keymap("x", opts, keymaps)
end

function utils.add_keymap_insert_mode(opts, keymaps)
  utils.add_keymap("i", opts, keymaps)
end

function utils.add_keymap_term_mode(opts, keymaps)
  utils.add_keymap("t", opts, keymaps)
end

vim.g.mapleader = " "

local opts = {
  nnoremap = {noremap = true, silent = true},
  inoremap = {noremap = true, silent = true},
  vnoremap = {noremap = true, silent = true},
  xnoremap = {noremap = true, silent = true},
  generic = {silent = true}
}

local default_keys = {
  insert_mode = {{"<C-s>", "<Esc>:w | silent AsyncRun compile % &<CR>a"}},

  normal_mode = {
    {"<Space>", "<Nop>"}, {"<S-h>", "<C-w>h"}, {"<S-j>", "<C-w>j"},
    {"<S-k>", "<C-w>k"}, {"<S-l>", "<C-w>l"},
    {"<C-s>", ":w | silent AsyncRun compile %<CR>"}, {"<Esc>", ":nohl<CR>"},
    {"<F7>", ":setlocal spell! spell?<CR>"},
    {"<leader>n", ":NvimTreeToggle<CR>"},
    {"<leader>=", ":call ToggleZoom(v:true)<CR>"},
    {"<leader>r", ":call Compile() &<CR>"}, {"<leader>p", ":BufferPick<CR>"},
    {"<leader>ff", ":Telescope find_files<cr>"},
    {"<leader>fr", ":Telescope oldfiles<cr>"},
    {"<leader>fg", "<cmd>Telescope live_grep<cr>"},
    {"<leader>b", "<cmd>Telescope buffers<cr>"},
    {"<leader>x", "<cmd>Telescope commands<cr>"},
    {"<leader>fh", "<cmd>Telescope help_tags<cr>"}, {"<leader>j", ":bn<cr>"},
    {"<leader>k", ":bp<cr>"}, {"gd", "<cmd>lua vim.lsp.buf.definition()<cr>"},
    {"gb", ":BufferLinePick<CR>"}
    --[[ {"gD", "<cmd>lua vim.lsp.buf.declaration()<cr>"},
    {"gr", "<cmd>lua vim.lsp.buf.references()<cr>"},
    {"gi", "<cmd>lua vim.lsp.buf.implementation()<cr>"},
    {"<C-k>", "<cmd>lua vim.lsp.buf.hover()<cr>"},
    {"<C-j>", "<cmd>lua vim.lsp.buf.signature_help()<cr>"},
    {"<C-p>", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>"},
    {"<C-n>", "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>"} ]]
  },

  term_mode = {
    -- Terminal window navigation
    {"<Esc>", "<C-\\><C-n>"}
  },

  visual_select_mode = {
    -- Better indenting
    {"<", "<gv"}, {">", ">gv"}

    -- { "p", '"0p', { silent = true } },
    -- { "P", '"0P', { silent = true } },
  },

  visual_mode = {
    -- Move selected line / block of text in visual mode
    {"K", ":move '<-2<CR>gv-gv"}, {"J", ":move '>+1<CR>gv-gv"}
  }
}

utils.add_keymap_normal_mode(opts.nnoremap, default_keys["normal_mode"])
utils.add_keymap_insert_mode(opts.inoremap, default_keys["insert_mode"])
utils.add_keymap_visual_select_mode(opts.vnoremap,
                                    default_keys["visual_select_mode"])
utils.add_keymap_visual_mode(opts.xnoremap, default_keys["visual_mode"])
utils.add_keymap_term_mode(opts.generic, default_keys["term_mode"])

local compe_opts = {noremap = true, silent = true, expr = true}
local compe_keys = {
  insert = {
    {"<C-Space>", "compe#complete()"}, {"<CR>", "compe#confirm('<CR>')"},
    {"<C-e>", "compe#close('<C-e>')"}
    --[[ {"<C-f>", "compe#scroll({ 'delta': +4 })"},
    {"<C-d>", "compe#scroll({ 'delta': -4 })"} ]]
  }
}

utils.add_keymap_insert_mode(compe_opts, compe_keys["insert"])

vim.cmd([[
" easy motion keybinds
nmap s <Plug>(easymotion-overwin-f2)


func! Compile()
  exec "w"
  "exec '!compile %'
  if &filetype == "cpp"
    exec 'vs | vert res -10 | te g++ -Wall % && ./a.out'
  elseif &filetype == 'c'
    exec 'vs | vert res -10 | te gcc -Wall % && ./a.out'
  elseif &filetype == 'python'
    exec 'vs | vert res -10 | te python3 %'
  elseif &filetype == 'rust'
    exec 'vs | vert res -10 | te cargo run'
  elseif &filetype == 'lua'
    exec 'vs | vert res -10 | te lua %'
  elseif &filetype == 'shell'
    exec 'vs | vert res -10 | te ./%'
  elseif &filetype == 'java'
    exec 'vs | vert res -10 | te javac % && java %<'
  elseif &filetype == 'markdown'
    exec 'MarkdownPreview'
  elseif &filetype == 'html'
    exec 'silent !live-server &'
  endif
endfunc

function! ToggleZoom(zoom)
  if exists("t:restore_zoom") && (a:zoom == v:true || t:restore_zoom.win != winnr())
    exec t:restore_zoom.cmd
    unlet t:restore_zoom
  elseif a:zoom
    let t:restore_zoom = { 'win': winnr(), 'cmd': winrestcmd() }
    exec "normal \<C-W>\|\<C-W>_"
  endif
endfunction

augroup restorezoom
  au WinEnter * silent! :call ToggleZoom(v:false)
augroup END
]])

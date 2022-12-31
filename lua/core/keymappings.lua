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
  nnoremap = { noremap = true, silent = true },
  inoremap = { noremap = true, silent = true },
  vnoremap = { noremap = true, silent = true },
  xnoremap = { noremap = true, silent = true },
  generic = { silent = true }
}

local default_keys = {
  insert_mode = {
    { "<C-s>", "<Esc>:w | silent AsyncRun compile % &<CR>a" },
    -- { "<Esc>", "<Esc>:w <CR>" }
  },

  normal_mode = {
    { "<Space>", "<Nop>" }, { "<S-h>", "<C-w>h" }, { "<S-j>", "<C-w>j" },
    { "<S-k>", "<C-w>k" }, { "<S-l>", "<C-w>l" },
    { "<C-s>", ":w | silent AsyncRun compile %<CR>" }, { "<Esc>", ":nohl<CR>" },
  {"n", "nzzzv"},
  {"N", "Nzzzv"},
    { "<F7>", ":setlocal spell! spell?<CR>" },
    { "<leader>/", ":Telescope current_buffer_fuzzy_find<cr>" },
    { "<leader>y", "\"+y" },
    { "<leader>Y", "\"+Y" },
    { "<leader>n", ":NvimTreeToggle<CR>" },
    { "<leader>=", ":call ToggleZoom(v:true)<CR>" },
    { "<leader>r", ":call Compile() <CR>" },
    { "<leader>ff", ":Telescope find_files<cr>" },
    { "<leader>fd", ":Telescope cder hidden=true<cr>" },
    { "<leader>fr", ":Telescope oldfiles<cr>" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
    { "<leader>b", "<cmd>Telescope buffers<cr>" },
    { "<leader>fj", "<cmd>Telescope commands<cr>" },
    { "<leader>x", "<cmd>Telescope<cr>" },
    { "<leader>z", "<cmd>ZenMode<cr>" },
    { "<leader>u", "<cmd>lua require('telescope').extensions.dict.synonyms()<cr>" },
    { "<leader>t", "<cmd>Neorg gtd capture<cr>" },
    { "<leader>fa", ":cd ~/Documents/org/ | e Tasks.org <cr>" },
    { "<leader>fi", ":cd ~/.config/nvim | e init.lua <cr>" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>" }, { "<leader>j", ":bn<cr>" },
    { "<leader>k", ":bp<cr>" }, { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>" },
    { "<leader>s", "<cmd> lua require('telescope.builtin').spell_suggest(require('telescope.themes').get_cursor({}))<cr>"},
    { "gb", ":BufferLinePick<CR>" },
    --[[ {"gD", "<cmd>lua vim.lsp.buf.declaration()<cr>"},
    {"gr", "<cmd>lua vim.lsp.buf.references()<cr>"},
    {"gi", "<cmd>lua vim.lsp.buf.implementation()<cr>"},
    {"<C-k>", "<cmd>lua vim.lsp.buf.hover()<cr>"},
    {"<C-j>", "<cmd>lua vim.lsp.buf.signature_help()<cr>"}, ]]
    { "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<cr>" },
    { "<C-p>", "<cmd>cprev<cr>" },
    { "<C-n>", "<cmd>cnext<cr>" },

    { "<leader>1", "1<C-W>w" },
    { "<leader>2", "2<C-W>w" },
    { "<leader>3", "3<C-W>w" },
    { "<leader>4", "4<C-W>w" },
    { "<leader>5", "5<C-W>w" },
    -- { "<leader>p", "<cmd>lprev<cr>" },
    -- { "<leader>n", "<cmd>lnext<cr>" }
  },


  term_mode = {
    -- Terminal window navigation
    { "<Esc>", "<C-\\><C-n>" }
  },

  visual_select_mode = {
    -- Better indenting
    { "<", "<gv" }, { ">", ">gv" }

    -- { "p", '"0p', { silent = true } },
    -- { "P", '"0P', { silent = true } },
  },

  visual_mode = {
    -- Move selected line / block of text in visual mode
    { "<leader>y", "\"+y" },
    {"K", ":move '<-2<CR>gv=gv"}, {"J", ":move '>+1<CR>gv=gv"}
  }
}

-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('n', 's', "<cmd>HopChar2<cr>", {})
--[[ vim.api.nvim_set_keymap('n', 'f',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
  ,
  {})
vim.api.nvim_set_keymap('n', 'F',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
  ,
  {})
vim.api.nvim_set_keymap('o', 'f',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>"
  ,
  {})
vim.api.nvim_set_keymap('o', 'F',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>"
  ,
  {})
vim.api.nvim_set_keymap('', 't',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
  ,
  {})
vim.api.nvim_set_keymap('', 'T',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
  ,
  {})
 ]]
utils.add_keymap_normal_mode(opts.nnoremap, default_keys["normal_mode"])
utils.add_keymap_insert_mode(opts.inoremap, default_keys["insert_mode"])
utils.add_keymap_visual_select_mode(opts.vnoremap,
  default_keys["visual_select_mode"])
utils.add_keymap_visual_mode(opts.xnoremap, default_keys["visual_mode"])
utils.add_keymap_term_mode(opts.generic, default_keys["term_mode"])

--[[ vim.api.nvim_set_keymap("i", "<C-n>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-n>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("i", "<C-p>", "<Plug>luasnip-prev-choice", {})
vim.api.nvim_set_keymap("s", "<C-p>", "<Plug>luasnip-prev-choice", {}) ]]

vim.keymap.set('x', 'aw', function() require 'align'.align_to_string(false, true, true) end, NS) -- Aligns to a string, looking left and with previews

vim.cmd([[
nnoremap S :%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>
map <leader>c :silent w! \| silent !compile "%:p"<CR>
map <leader>p :silent !opout "%:p"<CR>

func! Compile()
  exec 'w'
  if &filetype == "cpp"
    exec 'silent vs | vert res -10 | te g++ -g -Wall % && ./a.out'
  elseif &filetype == 'c'
    exec 'vs | vert res -10 | te gcc -g -Wall % && ./a.out'
  elseif &filetype == 'python'
    exec 'vs | vert res -10 | te python3 %'
  elseif &filetype == 'rust'
    exec 'vs | vert res -10 | te cargo run'
  elseif &filetype == 'javascript'
    exec 'vs | vert res -10 | te node %'
  elseif &filetype == 'javascriptreact'
    exec 'vs | vert res -10 | te node %'
  elseif &filetype == 'lua'
    exec 'vs | vert res -10 | te lua %'
  elseif &filetype == 'sh'
    exec 'vs | vert res -10 | te ./%'
  elseif &filetype == 'bash'
    exec 'vs | vert res -10 | te ./%'
  elseif &filetype == 'java'
    exec 'vs | vert res -10 | te javac % && java %<'
  elseif &filetype == 'markdown'
    exec 'silent !compile %&'
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

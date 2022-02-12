-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/peter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/peter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/peter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/peter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/peter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { " require('core/luasnip') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\19core/dashboard\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20core/bufferline\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdiffview\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lspkind-nvim"] = {
    config = { " require('core/lspkind') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { ' require("core/statusline") ' },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neorg = {
    config = { "\27LJ\2\nñ\1\0\2\v\0\a\0\0264\2\3\0004\3\3\0006\4\0\0009\4\1\4'\6\2\0\18\t\1\0009\a\3\1B\a\2\0026\b\0\0009\b\3\b'\n\4\0B\b\2\2!\a\b\a6\b\0\0009\b\3\b'\n\2\0B\b\2\2!\a\b\aB\4\3\0029\5\5\0&\4\5\4>\4\1\0039\4\6\0>\4\2\3>\3\1\2L\2\2\0\14highlight\ticon\v******\blen\6 \brep\vstringˆ\n\1\0\n\0002\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\0020\0005\3\3\0004\4\0\0=\4\4\0035\4\6\0005\5\5\0=\5\a\4=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\0034\4\0\0=\4\v\0034\4\0\0=\4\f\0034\4\0\0=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\0035\4\17\0005\5\16\0=\5\a\4=\4\18\0035\4&\0005\5$\0005\6\"\0005\a\19\0005\b\20\0=\b\21\a5\b\22\0=\b\23\a5\b\24\0=\b\25\a5\b\26\0=\b\27\a5\b\28\0=\b\29\a5\b\30\0003\t\31\0=\t \b=\b!\a=\a#\6=\6%\5=\5\a\4=\4'\0035\4+\0005\5)\0005\6(\0=\6*\5=\5\a\4=\4,\0035\4.\0005\5-\0=\5\a\4=\4/\3=\0031\2B\0\2\1K\0\1\0\tload\1\0\0\18core.gtd.base\1\0\0\1\0\1\14workspace\17my_workspace\21core.norg.dirman\1\0\0\15workspaces\1\0\0\1\0\1\17my_workspace\22~/Documents/neorg\24core.norg.concealer\1\0\0\nicons\1\0\0\fheading\1\0\0\flevel_6\vrender\0\1\0\4\ticon\r     ‚óã\fenabled\2\nquery7[ (heading6_prefix) (link_target_heading6) ] @icon\14highlight\24NeorgHeadingBullet6\flevel_5\1\0\4\ticon\f    ‚óè\nquery7[ (heading5_prefix) (link_target_heading5) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet5\flevel_4\1\0\4\ticon\v   ‚óã\nquery7[ (heading4_prefix) (link_target_heading4) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet4\flevel_3\1\0\4\ticon\n  ‚óè\nquery7[ (heading3_prefix) (link_target_heading3) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet3\flevel_2\1\0\4\ticon\t ‚óã\nquery7[ (heading2_prefix) (link_target_heading2) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet2\flevel_1\1\0\4\ticon\b‚óâ\nquery7[ (heading1_prefix) (link_target_heading1) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet1\1\0\1\fenabled\2\25core.norg.completion\1\0\0\1\0\1\vengine\rnvim-cmp\21core.gtd.queries\18core.neorgcmd\21core.gtd.helpers\16core.gtd.ui\18core.keybinds\24core.norg.manoeuvre\22core.norg.qol.toc\19core.presenter\vconfig\1\0\0\1\0\1\rzen_mode\rzen-mode\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["nvim-autopairs"] = {
    config = { " require('core/autopairs') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { " require('core/cmp') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    config = { " require('core/lsp_installer') " },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua",
    url = "https://github.com/akinsho/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-grammarous"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-grammarous",
    url = "https://github.com/rhysd/vim-grammarous"
  },
  ["vim-lua-format"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-lua-format",
    url = "https://github.com/andrejlevkovitch/vim-lua-format"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\n⁄\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\0\foptions\1\0\a\15signcolumn\ano\17cursorcolumn\1\vnumber\1\19relativenumber\1\15foldcolumn\0060\tlist\1\15cursorline\1\1\0\3\nwidth\3x\rbackdrop\4ÊÃô≥\6ÊÃπˇ\3\vheight\3\1\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/home/peter/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
 require('core/cmp') 
time([[Config for nvim-cmp]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
 require('core/luasnip') 
time([[Config for LuaSnip]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
 require('core/lspkind') 
time([[Config for lspkind-nvim]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\nñ\1\0\2\v\0\a\0\0264\2\3\0004\3\3\0006\4\0\0009\4\1\4'\6\2\0\18\t\1\0009\a\3\1B\a\2\0026\b\0\0009\b\3\b'\n\4\0B\b\2\2!\a\b\a6\b\0\0009\b\3\b'\n\2\0B\b\2\2!\a\b\aB\4\3\0029\5\5\0&\4\5\4>\4\1\0039\4\6\0>\4\2\3>\3\1\2L\2\2\0\14highlight\ticon\v******\blen\6 \brep\vstringˆ\n\1\0\n\0002\0A6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\0020\0005\3\3\0004\4\0\0=\4\4\0035\4\6\0005\5\5\0=\5\a\4=\4\b\0034\4\0\0=\4\t\0034\4\0\0=\4\n\0034\4\0\0=\4\v\0034\4\0\0=\4\f\0034\4\0\0=\4\r\0034\4\0\0=\4\14\0034\4\0\0=\4\15\0035\4\17\0005\5\16\0=\5\a\4=\4\18\0035\4&\0005\5$\0005\6\"\0005\a\19\0005\b\20\0=\b\21\a5\b\22\0=\b\23\a5\b\24\0=\b\25\a5\b\26\0=\b\27\a5\b\28\0=\b\29\a5\b\30\0003\t\31\0=\t \b=\b!\a=\a#\6=\6%\5=\5\a\4=\4'\0035\4+\0005\5)\0005\6(\0=\6*\5=\5\a\4=\4,\0035\4.\0005\5-\0=\5\a\4=\4/\3=\0031\2B\0\2\1K\0\1\0\tload\1\0\0\18core.gtd.base\1\0\0\1\0\1\14workspace\17my_workspace\21core.norg.dirman\1\0\0\15workspaces\1\0\0\1\0\1\17my_workspace\22~/Documents/neorg\24core.norg.concealer\1\0\0\nicons\1\0\0\fheading\1\0\0\flevel_6\vrender\0\1\0\4\ticon\r     ‚óã\fenabled\2\nquery7[ (heading6_prefix) (link_target_heading6) ] @icon\14highlight\24NeorgHeadingBullet6\flevel_5\1\0\4\ticon\f    ‚óè\nquery7[ (heading5_prefix) (link_target_heading5) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet5\flevel_4\1\0\4\ticon\v   ‚óã\nquery7[ (heading4_prefix) (link_target_heading4) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet4\flevel_3\1\0\4\ticon\n  ‚óè\nquery7[ (heading3_prefix) (link_target_heading3) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet3\flevel_2\1\0\4\ticon\t ‚óã\nquery7[ (heading2_prefix) (link_target_heading2) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet2\flevel_1\1\0\4\ticon\b‚óâ\nquery7[ (heading1_prefix) (link_target_heading1) ] @icon\fenabled\2\14highlight\24NeorgHeadingBullet1\1\0\1\fenabled\2\25core.norg.completion\1\0\0\1\0\1\vengine\rnvim-cmp\21core.gtd.queries\18core.neorgcmd\21core.gtd.helpers\16core.gtd.ui\18core.keybinds\24core.norg.manoeuvre\22core.norg.qol.toc\19core.presenter\vconfig\1\0\0\1\0\1\rzen_mode\rzen-mode\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\19core/dashboard\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
 require('core/lsp_installer') 
time([[Config for nvim-lsp-installer]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20core/bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\n⁄\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\vwindow\1\0\0\foptions\1\0\a\15signcolumn\ano\17cursorcolumn\1\vnumber\1\19relativenumber\1\15foldcolumn\0060\tlist\1\15cursorline\1\1\0\3\nwidth\3x\rbackdrop\4ÊÃô≥\6ÊÃπˇ\3\vheight\3\1\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
 require('core/autopairs') 
time([[Config for nvim-autopairs]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
 require("core/statusline") 
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

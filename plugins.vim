"if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
"	echo "Downloading junegunn/vim-plug to manage plugins..."
"	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
"	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
"	autocmd VimEnter * PlugInstall
"endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'alvan/vim-closetag'
  Plug 'akinsho/nvim-toggleterm.lua'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
"  Plug 'romgrk/doom-one.vim'
"  Plug 'sainnhe/sonokai'
  "Plug 'chuling/equinusocio-material.vim' "????
  " Plug 'camspiers/animate.vim'
  " Plug 'camspiers/lens.vim'
  "Plug 'godlygeek/tabular'
  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  Plug 'romgrk/barbar.nvim'
  Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'plasticboy/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
  Plug 'andrejlevkovitch/vim-lua-format'
  Plug 'norcalli/nvim-colorizer.lua'
"  Plug 'sheerun/vim-polyglot'
  Plug 'ryanoasis/vim-devicons'
"  Plug 'jiangmiao/auto-pairs'
  Plug 'windwp/nvim-autopairs'
  "Plug 'preservim/tagbar'
  "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  "Plug 'voldikss/vim-floaterm'
  Plug 'mhinz/vim-startify'
"  Plug 'liuchengxu/vista.vim'
  "Plug 'liuchengxu/clap.vim'
  "Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
  Plug 'liuchengxu/vim-which-key'
"  Plug 'airblade/vim-gitgutter'
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'honza/vim-snippets'
  Plug 'https://github.com/vimwiki/vimwiki.git'
  Plug 'preservim/nerdtree'
  Plug 'metakirby5/codi.vim'
  Plug 'asvetliakov/vim-easymotion'
"  Plug 'glepnir/dashboard-nvim'
  Plug 'rafamadriz/friendly-snippets'
  "Plug 'p00f/nvim-ts-rainbow'
  "Plug 'nvim-lua/completion-nvim'
  Plug 'turbio/bracey.vim'
  Plug 'mattn/emmet-vim'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  "Plug 'patstockwell/vim-monokai-tasty'
  Plug 'puremourning/vimspector'
call plug#end()

" Automatically install missing plugins on startup
"autocmd VimEnter *
"  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \|   PlugInstall --sync | q
"  \| endif

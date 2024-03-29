local parser_config = require"nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'main',
    files = {'src/parser.c', 'src/scanner.cc'}
  },
  filetype = 'org'
}

parser_config.norg = {
  install_info = {
    url = "https://github.com/nvim-neorg/tree-sitter-norg",
    files = {"src/parser.c", "src/scanner.cc"},
    branch = "main"
  }
}

require'nvim-treesitter.configs'.setup {
  autotag = {enable = true},
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?'
    }
  },

  --[[ rainbow = { -- TODO: looks awful, need to change color scheme
    enable = false,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
    colors = {
      "#ff2740", "#fd971f", "#ffd242", "#a6e22e", "#66d9ef", "#61aeee",
      "#c678dd"
    }
  }, ]]
  -- ensure_installed = {'org'} -- Or run :TSUpdate org
  -- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {
    'lua', 'python', 'cpp', 'c', 'java', 'markdown', 'javascript', 'bash',
    'html', 'css', 'json', 'typescript', 'kotlin'
  }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "latex" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension

    disable = {"latex"}, -- list of language that will be disabled

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = {"org"}
  },
  fold = {
    enable = false,              -- enable Tree-sitter-based folding
  },

  indent = {enable = true, disable = {"python"}}
}

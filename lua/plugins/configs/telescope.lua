local full_theme = {
  winblend = 0,
  width = 0.8,
  show_line = false,
  prompt_prefix = 'TS Symbols>',
  prompt_title = '',
  results_title = '',
  preview_title = '',
  borderchars = {
    prompt = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙'},
    results = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙'},
    preview = {'▀', '▐', '▄', '▌', '▛', '▜', '▟', '▙'}
  }
}

require("telescope").setup {
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    -- Your defaults config goes in here
    theme = {
      show_line = false,
      results_title = false,
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
          results_width = 0.8,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
      },

    },
    --
    borderchars = {
      prompt = {" ", " ", " ", " ", " ", " ", " ", " "},
      results = {" ", " ", " ", " ", " ", " ", " ", " "},
      preview = {" ", " ", " ", " ", " ", " ", " ", " "}
      --[[ prompt = {"─", "│", "─", "│", '┌', '┐', "┘", "└"},
      results = {"─", "│", "─", "│", "┌", "┐", "┘", "└"},
      preview = {'─', '│', '─', '│', '┌', '┐', '┘', '└'} ]]
    },
    winblend = 10,
    width = 1,
    prompt_prefix = '❯ ',
    prompt_title = '',
    -- preview_title = 'lmao'
    -- winblend = 20
    --[[ width = 1,
    layout_config = {
      vertical = {height = 0.5}
      -- other layout configuration here
    } ]]
  },
  pickers = {
    -- Your special builtin config goes in here
    buffers = {
      sort_lastused = true
      -- theme = "ivy"
      --[[ previewer = true,
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
          -- or right hand side can also be a the name of the action as string
          ["<c-d>"] = "delete_buffer"
        },
        n = {["<c-d>"] = require("telescope.actions").delete_buffer}
      } ]]
    }
    -- find_files = {theme = "ivy"},
    -- commands = {theme = "ivy"}
  },
  extensions = {
    file_browser = {
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
    -- your extension config goes in here
}
require("telescope").load_extension "file_browser"
require("telescope").load_extension "notify"

require("bufferline").setup {
  options = {
    -- separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
    -- separator_style = "thick"

  },
  highlights = {
    tab_close = {bg = '#292b2e'},
    indicator_selected = {fg = '#57c7ff'},
    -- indicator_visible= {bg = '#292b2e'}, -- BUG: this option doesn't exist anymore in new version
    modified_selected = {fg = '#abe15b'},
    separator = {
      bg = '#292b2e',
      fg = '#171920',
    },
    separator_visible = {
      bg = '#171920',
      fg = '#171920',
      -- bg = '<color-value-here>'
    },
    separator_selected = {
      bg = '#171920',
      fg = '#171920',
      -- bg = '<color-value-here>'
    },
    --[[ separator_selected = {
      bg = '#171920',
      -- bg = '<color-value-here>'
    }, ]]
    fill = {
      -- fg = '#f0f0f0',
      bg = '#171920',
    },
    background = {
      -- fg = '#f0f0f0',
      bg = '#292b2e'
    },
    tab = {
      -- fg = '#f0f0f0',
      bg = '#292b2e'
    },
    tab_selected = {
      -- fg = '#f0f0f0',
      bg = '#292b2e'
    },
    buffer_visible = {
      -- fg = '#f0f0f0',
      bg = '#2c2e3b',
    },
    close_button = {
      bg = '#292b2e'
    },
    close_button_visible = {
      bg = '#292b2e'
    },
    --[[ info_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    info_diagnostic = {
      fg = '<color-value-here>',
      guisp = '<color-value-here>',
      bg = '<color-value-here>'
    },
    info_diagnostic_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    info_diagnostic_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    }, ]]
    --[[ buffer_selected = {
      fg = '#f0f0f0',
      bg = '#3a3d4d',
      gui = "bold"
    }, ]]
    --[[ tab_close = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    close_button = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    close_button_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    }, ]]
  }
  --[[ highlights = {
    tab_close = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    close_button = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    close_button_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    close_button_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    buffer_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    buffer_selected = {
      fg = normal_fg,
      bg = '<color-value-here>',
      gui = "bold,italic"
    },
    diagnostic = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
    },
    diagnostic_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
    },
    diagnostic_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic"
    },
    info = {
      fg = '<color-value-here>',
      guisp = '<color-value-here>',
      bg = '<color-value-here>'
    },
    info_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    info_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    info_diagnostic = {
      fg = '<color-value-here>',
      guisp = '<color-value-here>',
      bg = '<color-value-here>'
    },
    info_diagnostic_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    info_diagnostic_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    warning = {
      fg = '<color-value-here>',
      guisp = '<color-value-here>',
      bg = '<color-value-here>'
    },
    warning_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    warning_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    warning_diagnostic = {
      fg = '<color-value-here>',
      guisp = '<color-value-here>',
      bg = '<color-value-here>'
    },
    warning_diagnostic_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    warning_diagnostic_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic",
      guisp = warning_diagnostic_fg
    },
    error = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      guisp = '<color-value-here>'
    },
    error_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    error_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    error_diagnostic = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      guisp = '<color-value-here>'
    },
    error_diagnostic_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    error_diagnostic_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    modified = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    modified_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    modified_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    duplicate_selected = {
      fg = '<color-value-here>',
      gui = "italic",
      bg = '<color-value-here>'
    },
    duplicate_visible = {
      fg = '<color-value-here>',
      gui = "italic",
      bg = '<color-value-here>'
    },
    duplicate = {
      fg = '<color-value-here>',
      gui = "italic",
      bg = '<color-value-here>'
    },
    separator_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    separator_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    separator = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    indicator_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>'
    },
    pick_selected = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic"
    },
    pick_visible = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic"
    },
    pick = {
      fg = '<color-value-here>',
      bg = '<color-value-here>',
      gui = "bold,italic"
    }
  }; ]]

}

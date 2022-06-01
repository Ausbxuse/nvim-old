require("bufferline").setup {
  options = {
    -- separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
    -- separator_style = "thick"

  },
  highlights = {
    tab_close = {guibg = '#292b2e'},
    indicator_selected = {guifg = '#57c7ff'},
    indicator_visible= {guibg = '#292b2e'},
    modified_selected = {guifg = '#abe15b'},
    separator = {
      guibg = '#292b2e',
      guifg = '#171920',
    },
    separator_visible = {
      guibg = '#171920',
      guifg = '#171920',
      -- guibg = '<color-value-here>'
    },
    separator_selected = {
      guibg = '#171920',
      guifg = '#171920',
      -- guibg = '<color-value-here>'
    },
    --[[ separator_selected = {
      guibg = '#171920',
      -- guibg = '<color-value-here>'
    }, ]]
    fill = {
      -- guifg = '#f0f0f0',
      guibg = '#171920',
    },
    background = {
      -- guifg = '#f0f0f0',
      guibg = '#292b2e'
    },
    tab = {
      -- guifg = '#f0f0f0',
      guibg = '#292b2e'
    },
    tab_selected = {
      -- guifg = '#f0f0f0',
      guibg = '#292b2e'
    },
    buffer_visible = {
      -- guifg = '#f0f0f0',
      guibg = '#2c2e3b',
    },
    close_button = {
      guibg = '#292b2e'
    },
    close_button_visible = {
      guibg = '#292b2e'
    },
    --[[ info_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    info_diagnostic = {
      guifg = '<color-value-here>',
      guisp = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    info_diagnostic_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    info_diagnostic_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    }, ]]
    --[[ buffer_selected = {
      guifg = '#f0f0f0',
      guibg = '#3a3d4d',
      gui = "bold"
    }, ]]
    --[[ tab_close = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    close_button = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    close_button_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    }, ]]
  }
  --[[ highlights = {
    tab_close = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    close_button = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    close_button_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    close_button_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    buffer_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    buffer_selected = {
      guifg = normal_fg,
      guibg = '<color-value-here>',
      gui = "bold,italic"
    },
    diagnostic = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
    },
    diagnostic_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
    },
    diagnostic_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic"
    },
    info = {
      guifg = '<color-value-here>',
      guisp = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    info_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    info_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    info_diagnostic = {
      guifg = '<color-value-here>',
      guisp = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    info_diagnostic_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    info_diagnostic_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    warning = {
      guifg = '<color-value-here>',
      guisp = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    warning_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    warning_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    warning_diagnostic = {
      guifg = '<color-value-here>',
      guisp = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    warning_diagnostic_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    warning_diagnostic_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic",
      guisp = warning_diagnostic_fg
    },
    error = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      guisp = '<color-value-here>'
    },
    error_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    error_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    error_diagnostic = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      guisp = '<color-value-here>'
    },
    error_diagnostic_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    error_diagnostic_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic",
      guisp = '<color-value-here>'
    },
    modified = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    modified_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    modified_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    duplicate_selected = {
      guifg = '<color-value-here>',
      gui = "italic",
      guibg = '<color-value-here>'
    },
    duplicate_visible = {
      guifg = '<color-value-here>',
      gui = "italic",
      guibg = '<color-value-here>'
    },
    duplicate = {
      guifg = '<color-value-here>',
      gui = "italic",
      guibg = '<color-value-here>'
    },
    separator_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    separator_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    separator = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    indicator_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>'
    },
    pick_selected = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic"
    },
    pick_visible = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic"
    },
    pick = {
      guifg = '<color-value-here>',
      guibg = '<color-value-here>',
      gui = "bold,italic"
    }
  }; ]]

}

require('neorg').setup {
  -- Tell Neorg what modules to load
  load = {
    ["core.defaults"] = {},
    ["core.presenter"] = {
      config = {
        zen_mode = "zen-mode",
      }

    },
    ["core.norg.qol.toc"] = {},
    ["core.norg.manoeuvre"] = {},
    ["core.keybinds"] = {},
    ["core.gtd.ui"] = {},
    ["core.gtd.helpers"] = {},
    ["core.neorgcmd"] = {},
    ["core.gtd.queries"] = {},
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp" -- We current support nvim-compe and nvim-cmp only
      }
    },
    ["core.norg.concealer"] = {
      config = {
        folds = true,
        icons = {
          heading = {
            enabled = true,

            level_1 = {
              enabled = true,
              icon = "◉",
              highlight = "NeorgHeadingBullet1",
              query = "[ (heading1_prefix) (link_target_heading1) ] @icon",
            },

            level_2 = {
              enabled = true,
              icon = " ○",
              highlight = "NeorgHeadingBullet2",
              query = "[ (heading2_prefix) (link_target_heading2) ] @icon",
            },

            level_3 = {
              enabled = true,
              icon = "  ●",
              highlight = "NeorgHeadingBullet3",
              query = "[ (heading3_prefix) (link_target_heading3) ] @icon",
            },

            level_4 = {
              enabled = true,
              icon = "   ○",
              highlight = "NeorgHeadingBullet4",
              query = "[ (heading4_prefix) (link_target_heading4) ] @icon",
            },

            level_5 = {
              enabled = true,
              icon = "    ●",
              highlight = "NeorgHeadingBullet5",
              query = "[ (heading5_prefix) (link_target_heading5) ] @icon",
            },

            level_6 = {
              enabled = true,
              icon = "     ○",
              highlight = "NeorgHeadingBullet6",
              query = "[ (heading6_prefix) (link_target_heading6) ] @icon",
              render = function(self, text)
                return {
                {
                    string.rep(" ", text:len() - string.len("******") - string.len(" ")) .. self.icon,
                    self.highlight,
                  },
                }
              end,
            },
          }

        }
      }
    }, -- Allows for use of icons
    ["core.norg.dirman"] = { -- Manage your directories with Neorg
      config = {
        workspaces = {
          my_workspace = "~/Documents/neorg",
        }
      }
    },
    ["core.gtd.base"] = {
      config = {
        workspace = "my_workspace",
      }
    }, -- Load all the default modules
  }
}

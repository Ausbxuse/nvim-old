local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node

-- Every unspecified option will be set to the default.
ls.config.set_config({
  history = true,
  -- Update more often, :h events for more info.
  updateevents = "TextChanged,TextChangedI",
  store_selection_keys = "<Tab>"
})
ls.add_snippets("all", {
  -- important! fmt does not return a snippet, it returns a table of nodes.
  s("tpl", {
    t({ "\\documentclass" }), i(1),
    t({ "", "After jumping forward once, cursor is here ->" }), i(2),
    t({ "", "After jumping once more, the snippet is exited there ->" }), i(0),
  })
})

ls.snippets = { all = {}, html = {} }

-- enable html snippets in javascript/javascript(REACT)
ls.snippets.javascript = ls.snippets.html
ls.snippets.javascriptreact = ls.snippets.html
ls.snippets.typescriptreact = ls.snippets.html
require("luasnip/loaders/from_vscode").load({ include = { "html" } })

-- You can also use lazy loading so you only get in memory snippets of languages you use
require 'luasnip.loaders.from_vscode'.lazy_load()

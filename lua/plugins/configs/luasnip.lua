local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node

local rec_ls
rec_ls = function()
  return sn(
    nil,
    c(1, {
      -- Order is important, sn(...) first would cause infinite loop of expansion.
      t(""),
      sn(nil, { t({ "", "\t\\item " }), i(1), d(2, rec_ls, {}) }),
    })
  )
end
-- Every unspecified option will be set to the default.
ls.config.set_config({
  history = true,
  -- Update more often, :h events for more info.
  updateevents = "TextChanged,TextChangedI"
})

ls.snippets = { all = {}, html = {} }
ls.add_snippets("tex", {
  -- rec_ls is self-referencing. That makes this snippet 'infinite' eg. have as many
  -- \item as necessary by utilizing a choiceNode.
  s("ls", {
    t({ "\\begin{itemize}", "\t\\item " }),
    i(1),
    d(2, rec_ls, {}),
    t({ "", "\\end{itemize}" }),
  }),

  s("tpl", {
    t({
      "\\documentclass{article}",
      "\\usepackage{geometry}",
      "\\usepackage{amsmath}",

      "\\usepackage{amsfonts}",
      "",
      "\\title{",}),
    i(1),
    t({
      "}",
      "\\author{${2:Zhenyu Zhao}}",
      "",
      "",
      "\\begin{document}",
      "    \\maketitle",
      "    $0",
      "\\end{document}"
    }),
    t({ "", "\\end{itemize}" }),
  }),

}, {
  key = "tex",
})

-- enable html snippets in javascript/javascript(REACT)
ls.snippets.javascript = ls.snippets.html
ls.snippets.javascriptreact = ls.snippets.html
ls.snippets.typescriptreact = ls.snippets.html
require("luasnip/loaders/from_vscode").load({ include = { "html" }, paths = "./snippets" })

-- You can also use lazy loading so you only get in memory snippets of languages you use
require 'luasnip.loaders.from_vscode'.lazy_load({ paths = "/home/peter/.config/nvim/snippets/" })

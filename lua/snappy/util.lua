local M = {}

local function highlight(group, properties)
  local bg = properties.bg == nil and "" or "guibg=" .. properties.bg
  local fg = properties.fg == nil and "" or "guifg=" .. properties.fg
  local style = properties.style == nil and "" or "gui=" .. properties.style

  local cmd = table.concat({
    "highlight",
    group,
    bg,
    fg,
    style,
  }, " ")

  vim.api.nvim_command(cmd)
end

local function highlight_link(name, target)
  vim.cmd("highlight link ".. name .. " " .. target)
end

function M.hi_link(skeleton)
  for name, target in pairs(skeleton) do
    highlight_link(name, target)
  end
end

function M.initialise(skeleton)
  for group, properties in pairs(skeleton) do
    highlight(group, properties)
  end
end

return M

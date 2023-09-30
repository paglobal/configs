---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "ayu_dark",
  theme_toggle = { "gruvbox", "ayu_dark" },
  hl_override = highlights.override,
  hl_add = highlights.add,
  telescope = { style = "bordered" },
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
  },
  nvdash = {
    load_on_startup = true,
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M

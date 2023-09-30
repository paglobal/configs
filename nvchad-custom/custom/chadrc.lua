---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "ayu_dark",
  theme_toggle = { "gruvbox", "ayu_dark" },
  -- these options don't seem to work. maybe check on them later
  -- hl_override = {
  --   Comment = {
  --     italic = true,
  --   },
  -- },
  -- hl_add = {
  --   NvimTreeOpenedFolderName = { fg = "green", bold = true },
  -- },
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

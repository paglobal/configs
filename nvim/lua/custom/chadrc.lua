--
vim.api.nvim_set_hl(0, "Comment", {
	fg = "#555555",
	italic = true,
	bold = true,
})

-- vim.cmd([[
--   set foldmethod=expr
--   set foldexpr=nvim_treesitter#foldexpr()
--   " Disable folding at startup.
--   set nofoldenable
-- ]])
--
-- !!! all keybindings set here instead of in `mappings.lua` are done so for convenience sake !!!
-- !!! KEYBINDINGS START !!!
--
-- move chunks of selected text up and down in visual mode
vim.cmd([[vnoremap J :m '>+1<cr>gv=gv]])
vim.cmd([[vnoremap K :m '<-2<cr>gv=gv]])

-- global search and replace
vim.cmd([[nnoremap <leader>gs :%s///gc]])

-- "sane" behaviour for pasting in visual mode
vim.cmd([[xnoremap p P]])
--
-- !!! KEYBINDINGS END !!!
--

--
---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "catppuccin",
	theme_toggle = { "gruvchad", "catppuccin" },
	telescope = { style = "bordered" },
	statusline = {
		theme = "minimal", -- default/vscode/vscode_colored/minimal
	},
	nvdash = {
		load_on_startup = true,
	},
	hl_override = {
		IndentBlanklineContextStart = {
			bg = "NONE",
		},
	},
}

M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M

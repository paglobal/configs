--
vim.api.nvim_set_hl(0, "Comment", {
	fg = "#555555",
	italic = true,
	bold = true,
})

vim.cmd([[
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
]])
--
-- !!! all keybindings set here instead of in `mappings.lua` are done so for convenience sake !!!
-- !!! KEYBINDINGS START !!!
--
-- move chunks of selected text up and down in visual mode
vim.cmd([[vnoremap J :m '>+1<cr>gv=gv]])
vim.cmd([[vnoremap K :m '<-2<cr>gv=gv]])

-- d, D, c, and C now delete text into the "1" register instead of the default register
-- always explicity yank text before you delete it with these characters to simulate the default behaviour
-- also, use x to simulate "cut" behaviour for arbitrarily selected text from now on
vim.cmd([[nnoremap d "1d]])
vim.cmd([[vnoremap d "1d]])
vim.cmd([[nnoremap D "1D]])
vim.cmd([[vnoremap D "1D]])
vim.cmd([[nnoremap c "1c]])
vim.cmd([[vnoremap c "1c]])
vim.cmd([[nnoremap C "1C]])
vim.cmd([[vnoremap C "1C]])

-- global search and replace
vim.cmd([[nnoremap <leader>gs :%s///gc]])

-- "sane" behaviour for pasting in visual mode
vim.cmd([[xnoremap p P]])

-- use P paste from the "1" register in case you want to paste something that was most recently deleted with d, D, c or C
vim.cmd([[nnoremap P "1p]])
vim.cmd([[xnoremap P "1P]])
--
-- !!! KEYBINDINGS END !!!
--

--
---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "gruvchad",
	theme_toggle = { "gruvchad", "ayu_dark" },
	telescope = { style = "bordered" },
	statusline = {
		theme = "minimal", -- default/vscode/vscode_colored/minimal
	},
	nvdash = {
		load_on_startup = true,
	},
}

M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M

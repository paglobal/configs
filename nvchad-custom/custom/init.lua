--
vim.opt.undofile = false
vim.cmd "set clipboard^=unnamed,unnamedplus"

-- !!! all keybindings set here instead of in `mappings.lua` are done so for convenience sake !!!

-- move chunks of selected text up and down in visual mode
vim.cmd "vnoremap J :m '>+1<cr>gv=gv"
vim.cmd "vnoremap K :m '<-2<cr>gv=gv"

-- d, D, c, and C now delete text into the "_" register (black hole) instead of the default register
-- always explicity yank text before you delete it with these characters to simulate the default behaviour
-- also, use x to simulate "cut" behaviour for arbitrarily selected text from now on
vim.cmd [[nnoremap d "_d]]
vim.cmd [[vnoremap d "_d]]
vim.cmd [[nnoremap D "_D]]
vim.cmd [[vnoremap D "_D]]
vim.cmd [[nnoremap c "_c]]
vim.cmd [[vnoremap c "_c]]
vim.cmd [[nnoremap C "_C]]
vim.cmd [[vnoremap C "_C]]

-- global search and replace
vim.cmd [[nnoremap <leader>gs :%s///gc]]

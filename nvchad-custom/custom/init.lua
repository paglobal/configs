vim.opt.undofile = false
vim.cmd("set clipboard^=unnamed,unnamedplus")

-- mappings set here due to complications (refer to mappings.lua, search for keyword "complications")
vim.cmd("vnoremap J :m '>+1<cr>gv=gv")
vim.cmd("vnoremap K :m '<-2<cr>gv=gv")

-- these mappings have also been set here due to a few complications
-- supposed to use `xnoremap` instead of `vnoremap` as stipulated in the comments below but... 
vim.cmd([[vnoremap <expr> p 'pgv"'.v:register.'y`>']])
vim.cmd([[vnoremap <expr> P 'Pgv"'.v:register.'y`>']])
-- vim.cmd([[xnoremap <expr> p 'pgv"'.v:register.'y`>']])
-- vim.cmd([[xnoremap <expr> P 'Pgv"'.v:register.'y`>']])

--Global search and replace
vim.cmd([[nnoremap <leader>gs :%s///gc]])

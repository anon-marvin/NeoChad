vim.g.nvim_tree_width = 20
require 'nvim-tree'.setup {}
vim.cmd [[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
local map = vim.api.nvim_set_keymap
map('n','<C-h>','<C-w>h',{noremap=true ,silent=false})
map('n','<C-l>','<C-w>l',{noremap=true ,silent=false})
map('n','<C-j>','<C-w>j',{noremap=true ,silent=false})
map('n','<C-k>','<C-w>k',{noremap=true ,silent=false})
map('n','<C-b>',':NvimTreeToggle<CR>',{noremap=true ,silent=true})


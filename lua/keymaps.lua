-- 200 ms for key timeout
vim.o.timeoutlen = 200

-- Wrapper to avoid boilerplate
local map = function(mode, lhs, rhs) 
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

-- Space as leader
vim.g.mapleader = ' ' 
vim.g.maplocalleader = ' '
map('n', '<Space>', '<nop>')

-- Replace word with in word for delete, change and yank
map('n', 'dw', 'diw')
map('n', 'yw', 'yiw')
map('n', 'cw', 'ciw')

-- Remove training wheels
map('n', '<Left>', '<nop>')
map('n', '<Right>', '<nop>')
map('n', '<Up>', '<nop>')
map('n', '<Down>', '<nop>')
map('n', '<BS>', '<nop>')
map('n', '<Enter>', '<nop>')

map('v', '<Left>', '<nop>')
map('v', '<Right>', '<nop>')
map('v', '<Up>', '<nop>') 
map('v', '<Down>', '<nop>')
map('v', '<BS>', '<nop>')
map('v', '<Enter>', '<nop>')

map('i', '<Left>', '<nop>')
map('i', '<Right>', '<nop>')
map('i', '<Up>', '<nop>')
map('i', '<Down>', '<nop>')

-- Tab to change indentation
map('n', '<Tab>', '<bar>><bar>')
map('n', '<S-Tab>', '<bar><<bar>')

map('v', '<Tab>', '<bar>><bar>')
map('v', '<S-Tab>', '<bar><<bar>')

-- U is redo
map('n', 'U', '<C-r>')

-- Clear highlight after search
map('n', '<leader>h', vim.cmd.nohlsearch)

map('n', '<leader>w', vim.cmd.w)
map('n', '<leader>wq', vim.cmd.wq)
map('n', '<leader>q', vim.cmd.q)

map('n', '<leader>n', vim.cmd.NvimTreeFindFileToggle)

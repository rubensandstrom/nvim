-- 500 ms for key timeout
vim.o.timeoutlen = 500

-- Wrapper to avoid boilerplate
local map = function(mode, lhs, rhs)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

-- Space as leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
map('n', '<Space>', '<Nop>')

-- Replace word with in word for delete, change and yank
map('n', 'dw', 'diw')
map('n', 'yw', 'yiw')
map('n', 'cw', 'ciw')

-- Remove training wheels
map('n', '<Left>', '<Nop>')
map('n', '<Right>', '<Nop>')
map('n', '<Up>', '<Nop>')
map('n', '<Down>', '<Nop>')
map('n', '<BS>', '<Nop>')
map('n', '<Enter>', '<Nop>')

map('v', '<Left>', '<Nop>')
map('v', '<Right>', '<Nop>')
map('v', '<Up>', '<Nop>')
map('v', '<Down>', '<Nop>')
map('v', '<BS>', '<Nop>')
map('v', '<Enter>', '<Nop>')

map('i', '<Left>', '<Nop>')
map('i', '<Right>', '<Nop>')
map('i', '<Up>', '<Nop>')
map('i', '<Down>', '<Nop>')

-- Tab to change indentation
map('n', '<Tab>', '<Bar>><Bar>')
map('n', '<S-Tab>', '<Bar><<Bar>')

map('v', '<Tab>', '<Bar>><Bar>')
map('v', '<S-Tab>', '<Bar><<Bar>')

-- U is redo
map('n', 'U', '<C-r>')

-- Clear highlight after search
map('n', '<leader>h', vim.cmd.nohlsearch)

map('n', '<Leader>w', vim.cmd.w)
map('n', '<Leader>ww', '<Cmd>w!<CR>')
map('n', '<Leader>wq', vim.cmd.wq)
map('n', '<Leader>q', vim.cmd.q)
map('n', '<Leader>qq', '<Cmd>q!<CR>')

map('n', '<Leader>n', vim.cmd.NvimTreeFindFileToggle)

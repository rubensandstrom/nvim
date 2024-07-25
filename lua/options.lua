local o = vim.o

-- line numbers
o.relativenumber = true
o.number = true

-- tabs & indentation
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = 2
o.autoindent = true

-- line wrapping
o.wrap = false

-- code folding
o.foldmethod = 'expr'
o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

vim.api.nvim_create_autocmd(
    {
        "BufNewFile",
        "BufRead",
    },
    {
        pattern = "*.s,*.inc",
        callback = function()
            local buf = vim.api.nvim_get_current_buf()
            vim.api.nvim_buf_set_option(buf, "filetype", "asm_ca65")
        end
    }
)

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-treesitter/nvim-treesitter'

    -- Old quick comment-out plugin, and auto-complete parenthesis, and surround
    use 'jiangmiao/auto-pairs'
    -- Clean python folding. z+c & z+a
    use 'tmhedberg/SimpylFold'

    -- multi-plugin with surround, comment etc
    use 'echasnovski/mini.nvim'
end)

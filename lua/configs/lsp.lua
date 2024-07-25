require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'rust_analyzer', 'clangd', 'pyright' }
})
require('lspconfig')['pyright'].setup({})
require('lspconfig')['lua_ls'].setup({})
require('lspconfig')['clangd'].setup({})
require('rust-tools').setup({})


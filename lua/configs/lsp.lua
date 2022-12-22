require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'sumneko_lua', 'rust_analyzer', 'clangd', 'pyright' }
})

require('lspconfig')['pyright'].setup{
}
require('lspconfig')['rust_analyzer'].setup{
}

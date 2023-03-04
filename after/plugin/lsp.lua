local lsp = require('lsp-zero')

lsp.preset("recommended")
lsp.ensure_installed({
    'tsserver', 
    'eslint', 
    'rust_analyzer',
})
lsp.setup()

vim.diagnostic.config({
    virtual_text = true, 
    signs = true,
    underline = true,
    update_in_insert = true,
})



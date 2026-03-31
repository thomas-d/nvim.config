return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { 'hrsh7th/nvim-cmp' },
        { 'nvim-telescope/telescope.nvim' },
        { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
        -- KEYBINDINGS
        vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, { desc = 'Go to declaration' })
        vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { desc = 'Go to references' })
    end,
}

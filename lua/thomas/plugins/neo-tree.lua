return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
        {
            's1n7ax/nvim-window-picker',
            config = function()
                require('window-picker').setup {
                    filter_rules = {
                        include_current_win = false,
                        autoselect_one = true,
                        bo = {
                            filetype = { 'neo-tree', 'neo-tree-group', 'notify' },
                            buftype = { 'terminal', 'quickfix' },
                        },
                    },
                }
            end,
        },
    },
    lazy = false,
    config = function() 
        require('neo-tree').setup {
            sources = { 'filesystem', 'buffers', 'document_symbols' },
            close_if_last_window = true,
            window = {
                mappings = {
                    ["P"] = {
                        "toggle_preview",
                        config = {
                            use_float = false,
                            title = 'Preview'
                        },
                    },
                },
            },
        }
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        -- KEYBINDINGS
        vim.keymap.set('n', '<Leader>tt', '<Cmd>Neotree filesystem toggle<CR>', { desc = 'Open Neotree' })
        vim.keymap.set('n', '<Leader>ts', '<Cmd>Neotree document_symbols toggle<CR>', { desc = 'Show document symbols in Neotree' })
        vim.keymap.set('n', '<Leader>tb', '<Cmd>Neotree buffers toggle<CR>', { desc = 'Show current buffers in Neotree' })
    end,
}

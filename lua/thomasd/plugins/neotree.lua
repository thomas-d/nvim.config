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
              filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
              buftype = { 'terminal', 'quickfix' },
            },
          },
        }
      end,
    },
  },
  config = function()
    require('neo-tree').setup {
      sources = { 'filesystem', 'buffers', 'document_symbols' },
      close_if_last_window = false,
    }
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.keymap.set('n', '<Leader>tt', '<Cmd>Neotree toggle<CR>', { desc = 'Open Neotree' })
    vim.keymap.set('n', '<Leader>ts', '<Cmd>Neotree document_symbols<CR>', { desc = 'Open Neotree' })
    vim.keymap.set('n', '<Leader>tb', '<Cmd>Neotree buffers<CR>', { desc = 'Open Neotree' })
    vim.api.nvim_create_autocmd('VimEnter', {
      command = 'set nornu nonu | Neotree toggle',
    })
    vim.api.nvim_create_autocmd('BufEnter', {
      command = 'set rnu nu',
    })
  end,
}

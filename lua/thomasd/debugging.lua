return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'mfussenegger/nvim-dap-python',
      'leoluz/nvim-dap-go',
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'nvim-neotest/nvim-nio',
      'williamboman/mason.nvim',
      'jay-babu/mason-nvim-dap.nvim',
    },
    config = function()
      local dap = require 'dap'
      local ui = require 'dapui'
      require('mason-nvim-dap').setup {
        automatic_setup = true,
        ensure_installed = {
          'debugpy',
        },
      }
      vim.keymap.set('n', '<Leader>b', dap.toggle_breakpoint, {})
      vim.keymap.set('n', '<F5>', dap.continue, {})
      vim.keymap.set('n', '<F1>', dap.step_into, { desc = 'Debug: step into' })
      vim.keymap.set('n', '<F2>', dap.step_over, { desc = 'Debug: step over' })
      vim.keymap.set('n', '<F3>', dap.step_out, { desc = 'Debug: step out' })
      ui.setup {
        -- Set icons to characters that are more likely to work in every terminal.
        --    Feel free to remove or use ones that you like more! :)
        --    Don't feel like these are good choices.
        icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
        controls = {
          icons = {
            pause = '⏸',
            play = '▶',
            step_into = '⏎',
            step_over = '⏭',
            step_out = '⏮',
            step_back = 'b',
            run_last = '▶▶',
            terminate = '⏹',
            disconnect = '⏏',
          },
        },
      }
      require('dap-go').setup()
      require('nvim-dap-virtual-text').setup {
        display_callback = function(variable)
          if #variable.value > 15 then
            return ' ' .. string.sub(variable.value, 1, 15) .. '... '
          end
          return ' ' .. variable.value
        end,
      }
    end,
  },
}

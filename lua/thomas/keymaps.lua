-- diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [diagnostic message' })
vim.keymap.set('n', 'd]', vim.diagnostic.goto_next, { desc = 'Go to next d]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [e]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [q]uicklist' })

-- resize splits
vim.keymap.set('n', '<S-h>', '<cmd>:vertical :resize +10<CR>', { desc = 'Increase window width' })
vim.keymap.set('n', '<S-j>', '<cmd>:resize +10<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<S-k>', '<cmd>:resize -10<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<S-l>', '<cmd>:vertical :resize -10<CR>', { desc = 'Decrease window width' })

-- add quotes around the current selection
vim.keymap.set('v', '<Leader>qq', 'di""<Esc>Pl', { desc = 'Wrap the current selection in double quotes' })
vim.keymap.set('v', '<Leader>qd', 'd<Esc>hPl2x', { desc = 'Remove quotes around the current selection' })

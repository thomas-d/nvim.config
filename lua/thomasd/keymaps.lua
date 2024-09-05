-- diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [d]iagnostic message' })
vim.keymap.set('n', 'd]', vim.diagnostic.goto_next, { desc = 'Go to next d]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [e]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [q]uicklist' })

-- splits navigation and resizing
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the bottom window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the top window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })

vim.keymap.set('n', '<S-h>', '<cmd>:vertical :resize +10<CR>', { desc = 'Increase window width' })
vim.keymap.set('n', '<S-j>', '<cmd>:resize +10<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<S-k>', '<cmd>:resize -10<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<S-l>', '<cmd>:vertical :resize -10<CR>', { desc = 'Decrease window width' })

-- add quotes around the current selection
vim.keymap.set('v', '<Leader>qq', 'di""<Esc>Pl', { desc = 'Wrap the current selection in double quotes' })
vim.keymap.set('v', '<Leader>qd', 'd<Esc>hPl2x', { desc = 'Remove quotes around the current selection' })

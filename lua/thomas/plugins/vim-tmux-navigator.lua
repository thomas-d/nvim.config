return {
  'christoomey/vim-tmux-navigator',
  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
  },
  keys = {
    { '<C-h>', '<cmd><C-U>TmuxNavigateLeft<cr>', { desc = 'Navigate to left tmux pane' } },
    { '<C-j>', '<cmd><C-U>TmuxNavigateDown<cr>', { desc = 'Navigate to bottom tmux pane' } },
    { '<C-k>', '<cmd><C-U>TmuxNavigateUp<cr>', { desc = 'Navigate to top tmux pane' } },
    { '<C-l>', '<cmd><C-U>TmuxNavigateRigth<cr>', { desc = 'Navigate to rigth pane' } },
    { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>', { desc = 'Navigate to previous split' } },
  },
}

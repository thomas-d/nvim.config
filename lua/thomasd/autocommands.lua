vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when copying',
  group = vim.api.nvim_create_augroup('highlight-yank', {
    clear = true,
  }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
  },
  dependecies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
      columns = {
        'icon',
        'permissisons',
        'size',
        'mtime',
      },
      buf_options = {
        buflisted = false,
        bufhidden = 'hide',
      },
    }
  end,
}

require 'thomasd.options'
require 'thomasd.keymaps'
require 'thomasd.autocommands'

-- lazy plugin manager
local lazypath = vim.fn.stdpath 'data' .. 'lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end

vim.opt.rtp:prepend(lazypath)

-- import plugins
require('lazy').setup {
  require 'thomasd.telescope',
  require 'thomasd.lsp',
  require 'thomasd.theme',
  require 'thomasd.autoformat',
  require 'thomasd.autocompletion',
  require 'thomasd.debugging',
  require 'thomasd.various',
  { import = 'thomasd.plugins' or {} },
}

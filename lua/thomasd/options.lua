-- global options
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.have_nerd_font = true
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.showmode = false
vim.opt.breakindent = true
-- share the clipboard with OS
vim.opt.clipboard = 'unnamedplus'
-- save undo history
vim.opt.undofile = true
vim.opt.signcolumn = 'yes'

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- use soft tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Set highliht on search but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- search ignores case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- timeout between keypresses of a sequence
vim.opt.timeout = true
vim.opt.timeoutlen = 500

-- black options
vim.g.black_linelength = 120
vim.g.black_string_normalization = 0

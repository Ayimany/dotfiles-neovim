-- Efficient searching
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Text visibility
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 16
vim.opt.wrap = false

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Term colors
vim.opt.termguicolors = true

-- Cursor hints
vim.opt.cursorcolumn = false
vim.opt.cursorline = true
vim.opt.colorcolumn = '80'

-- Buffer splitting
vim.opt.switchbuf = 'split'

-- Disable mouse
vim.opt.mouse = ''

-- Selection mode
vim.opt.selection = 'inclusive'

-- Generate undofile
vim.opt.undofile = true
vim.opt.undodir = os.getenv('XDG_CONFIG_HOME') .. '/nvim/undo'

-- Custom pairs
vim.opt.matchpairs = '(:),{:},[:],<:>'

-- Indenting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.copyindent = true
vim.opt.preserveindent = true

-- Use fish shell
vim.opt.shell = '/usr/bin/fish'

-- Enable signcolumn
vim.opt.signcolumn = 'yes'

-- Leader key
vim.g.mapleader = ' '

-- Extended functionality
require('bootstrap')

vim.cmd('colorscheme catppuccin-mocha')

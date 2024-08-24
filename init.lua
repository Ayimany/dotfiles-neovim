-- ooooo      ooo oooooooooooo   .oooooo. oooooo     oooo ooooo ooo        ooooo
-- `888b.     `8' `888'     `8  d8P'  `Y8b `888.     .8'  `888' `88.       .888'
--  8 `88b.    8   888         888      888 `888.   .8'    888   888b     d'888
--  8   `88b.  8   888oooo8    888      888  `888. .8'     888   8 Y88. .P  888
--  8     `88b.8   888    "    888      888   `888.8'      888   8  `888'   888
--  8       `888   888       o `88b    d88'    `888'       888   8    Y     888
-- o8o        `8  o888ooooood8  `Y8bood8P'      `8'       o888o o8o        o888o

-- |\/| _    _ ._ _  _ .__|_
-- |  |(_)\/(/_| | |(/_| ||_

vim.opt.incsearch      = true
vim.opt.ignorecase     = true
vim.opt.smartcase      = true

--  _
-- | \o _._ | _.
-- |_/|_>|_)|(_|\/
--       |      /

vim.opt.smoothscroll   = true
vim.opt.scrolloff      = 8
vim.opt.sidescrolloff  = 16
vim.opt.wrap           = false
vim.opt.cmdheight      = 1
vim.opt.number         = true
vim.opt.relativenumber = true

-- |_|o _ |_ |o _ |__|_o._  _
-- | ||(_|| |||(_|| ||_|| |(_|
--      _|      _|          _|

vim.opt.background     = 'dark'
vim.opt.hlsearch       = true
vim.opt.termguicolors  = true
vim.opt.cursorcolumn   = false
vim.opt.cursorline     = true
vim.opt.colorcolumn    = '80'

-- |\/|   |_|_o    o._  _| _
-- |  ||_|| |_|\/\/|| |(_|(_)\/\/

vim.opt.switchbuf      = 'split'

-- |\/| _     _ _
-- |  |(_)|_|_>(/_

-- disable mouse
vim.opt.mouse          = ''

-- |\/| _     _ _
-- |  |(_)|_|_>(/_

vim.opt.selection      = 'inclusive'

--  _
-- |_ _|o_|_o._  _
-- |_(_|| |_|| |(_|
--               _|

vim.opt.undofile       = true
vim.opt.undodir        = os.getenv('XDG_CONFIG_HOME') .. '/nvim/undo'
vim.opt.matchpairs     = '(:),{:},[:],<:>'

-- ___
--  | ._  _| _ .__|_o._  _
-- _|_| |(_|(/_| ||_|| |(_|
--                       _|

vim.opt.tabstop        = 4
vim.opt.shiftwidth     = 4
vim.opt.softtabstop    = 4
vim.opt.smarttab       = true
vim.opt.shiftround     = true
vim.opt.expandtab      = true
vim.opt.autoindent     = true
vim.opt.smartindent    = true
vim.opt.copyindent     = true
vim.opt.preserveindent = true

--  _                  _
-- |_ _|_ _ ._._  _.| /  _ ._ _ ._ _  _.._  _| _
-- |_><|_(/_| | |(_|| \_(_)| | || | |(_|| |(_|_>

vim.opt.shell          = '/usr/bin/fish'

-- |\/|o _ _
-- |  ||_>(_

vim.opt.signcolumn     = 'yes'
vim.g.mapleader        = ' '

require('bootstrap')

vim.cmd.colorscheme('catppuccin')

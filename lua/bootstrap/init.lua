--  __                  _____     _
-- |  |   ___ ___ _ _  |   | |_ _|_|_____
-- |  |__| .'|- _| | |_| | | | | | |     |
-- |_____|__,|___|_  |_|_|___|\_/|_|_|_|_|
--               |___|

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out      = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })

    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
            { out,                            'WarningMsg' },
            { '\nPress any key to exit...' },
        }, true, {})
        vim.fn.getchar()

        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

    spec = {
        { import = 'plugins' },
    },

    install = {
        colorscheme = { 'catppuccin' }
    },

    checker = {
        enabled = true,
        notify = false -- we let the autogroup handle it
    },

    change_detection = {
        enabled = false,
        notify = false
    },

    ui = {
        border = 'rounded',
    },

    rtp = {
        disabled_plugins = {
            'tutor', 'tohtml', 'netrwPlugin'
        }
    }
})

local function augroup(name)
    return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("VimEnter", {
    group = augroup("autoupdate"),
    callback = function()
        if require("lazy.status").has_updates then
            require("lazy").update({ show = false, })
        end
    end,
})

-- Main Bootstrapping Module
-- Loads Lazy.nvim

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
        { import = 'plugins/theming' },
    },

    install = {
        colorscheme = { 'catppuccin' }
    },

    checker = {
        enabled = true,
        notify = false
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

-- Automatically update plugins (If updates are available)
vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup('lazyvim_auto_update', { clear = true }),
    callback = function()
        if require("lazy.status").has_updates then
            require("lazy").update({ show = false, })
        end
    end,
})


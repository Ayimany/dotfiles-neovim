return {
    ---------------------------------------------------------------------------

    'folke/which-key.nvim',

    ---------------------------------------------------------------------------

    event = 'VeryLazy',

    ---------------------------------------------------------------------------

    config = function()
        local wk = require('which-key')

        wk.add({
            { '<leader>f', icon = '  ', group = 'Find' },
            { '<leader>g', icon = '  ', group = 'Git' },
            { '<leader>v', icon = '  ', group = 'View' },
            { '<leader>n', icon = ' 󰙴 ', group = 'New' },
            { '<leader>d', icon = '  ', group = 'Debug' },
            { '<leader>c', icon = '  ', group = 'Context' },
            { '<leader>s', icon = '  ', group = 'Symbol' },
            { '<leader>l', icon = '  ', group = 'LSP' },
        })
    end,

    ---------------------------------------------------------------------------
}

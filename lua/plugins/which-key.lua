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
            { '<leader>gv', icon = '  ', group = 'View' },
            { '<leader>n', icon = ' 󰙴 ', group = 'New' },
            {
                '<leader>nD',
                icon = '  ',
                group = 'More documentation options',
            },
            { '<leader>t', icon = '  ', group = 'Tools' },
            { '<leader>d', icon = '  ', group = 'Debug' },
            { '<leader>c', icon = '  ', group = 'Context' },
            { '<leader>s', icon = '  ', group = 'Symbol' },
            { '<leader>l', icon = '  ', group = 'LSP' },
            { '<leader>L', icon = '  ', group = 'Language Context' },
            {
                '<leader><leader>',
                require('lazy.util').float_term,
                icon = '  ',
                group = 'Terminal',
            },
        })
    end,

    ---------------------------------------------------------------------------
}

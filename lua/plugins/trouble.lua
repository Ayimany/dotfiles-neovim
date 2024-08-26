return {
    'folke/trouble.nvim',
    name = 'Trouble',

    opts = {},

    keys = {
        {
            '<leader>xx',
            '<cmd>Trouble diagnostics toggle<cr>',
            desc = 'Diagnostics: Window'
        },
        {
            '<leader>xX',
            '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
            desc = 'Diagnostics: Filter'
        },
        {
            '<leader>xs',
            '<cmd>Trouble symbols toggle focus=false<cr>',
            desc = 'Diagnostics: Symbols'
        },
        {
            '<leader>xf',
            '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
            desc = 'Diagnostics: LSP'
        },
        {
            '<leader>xl',
            '<cmd>Trouble loclist toggle<cr>',
            desc = 'Diagnostics: Loclist'
        },
        {
            '<leader>xq',
            '<cmd>Trouble qflist toggle<cr>',
            desc = 'Diagnostics: Quick fixes'
        }
    }
}

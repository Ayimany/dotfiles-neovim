return {
    'folke/trouble.nvim',
    name = 'Trouble',

    opts = {},

    keys = {
        {
            '<leader>xx',
            '<cmd>Trouble diagnostics toggle<cr>',
        },
        {
            '<leader>xX',
            '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        },
        {
            '<leader>xs',
            '<cmd>Trouble symbols toggle focus=false<cr>',
        },
        {
            '<leader>xf',
            '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        },
        {
            '<leader>xl',
            '<cmd>Trouble loclist toggle<cr>',
        },
        {
            '<leader>xq',
            '<cmd>Trouble qflist toggle<cr>',
        }
    }
}

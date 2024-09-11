return {
    ---------------------------------------------------------------------------

    'folke/trouble.nvim',

    ---------------------------------------------------------------------------

    keys = {
        {
            '<leader>ld',
            '<cmd>Trouble diagnostics toggle<cr>',
            desc = 'Diagnostics',
        },
        {
            '<leader>lD',
            '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
            desc = 'Diagnostics (Buffer)',
        },
        {
            '<leader>lq',
            '<cmd>Trouble qflist toggle<cr>',
            desc = 'Quick Fixes',
        },
    },

    ---------------------------------------------------------------------------

    config = true,

    ---------------------------------------------------------------------------
}

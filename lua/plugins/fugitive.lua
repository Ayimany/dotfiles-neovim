return {
    'tpope/vim-fugitive',
    name = 'Fugitive',

    keys = {
        {
            '<leader>gg',
            '<cmd>Git<CR>',
            desc = 'Git: Status',
        },

        {
            '<leader>ge',
            '<cmd>Gedit<CR><cmd>q<CR>',
            desc = 'Git: Return to file'
        },
        {
            '<leader>gds',
            '<cmd>Gdiffsplit<CR>',
            desc = 'Git: Show diff'
        },
        {
            '<leader>gh',
            '<cmd>Git log %<CR>',
            desc = 'Git: Show file history'
        },
        {
            '<leader>gH',
            '<cmd>Git log<CR>',
            desc = 'Git: History'
        },
        {
            '<leader>gB',
            '<cmd>Git blame %<CR>',
            desc = 'Git: Show blame buffer'
        },
    }
}

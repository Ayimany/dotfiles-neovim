return {
    'tpope/vim-fugitive',
    name = 'Fugitive',


    keys = {
        { '<leader>gg', '<cmd>Git<CR>' },
        { '<leader>Ge', '<cmd>Gedit<CR>' },
        { '<leader>Gd', '<cmd>Gdiffsplit<CR>' },
        { '<leader>Gh', '<cmd>Git log<CR>' },
        { '<leader>Gl', '<cmd>Gllog<CR>' },
        { '<leader>GL', '<cmd>Git log %<CR>' },
        { '<leader>GB', '<cmd>Git blame %<CR>' },
        { '<leader>ll', '<cmd>q<CR><cmd>lnext<CR>' },
        { '<leader>lh', '<cmd>q<CR><cmd>lprevious<CR>' },
        { '<leader>lc', '<cmd>lclose<CR>' },
    }
}

return {
    ---------------------------------------------------------------------------

    'danymat/neogen',

    ---------------------------------------------------------------------------

    keys = {
        {
            '<leader>nd',
            '<cmd>lua require(\'neogen\').generate()<cr>',
            desc = 'Annotation / Documentation',
        },
        {
            '<leader>nD',
            group = 'Specific Annotation / Documentation',
        },
        {
            '<leader>nDf',
            '<cmd>lua require(\'neogen\').generate({ type = \'func\' })<cr>',
            desc = 'Function Annotation / Documentation',
        },
        {
            '<leader>nDc',
            '<cmd>lua require(\'neogen\').generate({ type = \'class\' })<cr>',
            desc = 'Class Annotation / Documentation',
        },
        {
            '<leader>nDt',
            '<cmd>lua require(\'neogen\').generate({ type = \'type\' })<cr>',
            desc = 'Type Annotation / Documentation',
        },
        {
            '<leader>nDF',
            '<cmd>lua require(\'neogen\').generate({ type = \'file\' })<cr>',
            desc = 'Function Annotation / Documentation',
        },
    },

    ---------------------------------------------------------------------------

    opts = {
        snippet_engine = 'luasnip',
    },

    ---------------------------------------------------------------------------
}

return {
    ---------------------------------------------------------------------------

    'nvim-telescope/telescope.nvim',

    ---------------------------------------------------------------------------

    dependencies = {
        { 'nvim-lua/plenary.nvim' },
    },

    ---------------------------------------------------------------------------

    keys = {
        {
            '<leader>ff',
            '<cmd>Telescope fd<CR>',
            desc = 'Files',
            icon = '  ',
        },
        {
            '<leader>ft',
            '<cmd>Telescope live_grep<CR>',
            desc = 'Text',
            icon = '  ',
        },
    },

    ---------------------------------------------------------------------------

    opts = {
        defaults = {
            layout_strategy = 'vertical',
            prompt_prefix = '    ',
            selection_caret = '    ',
            multi_icon = '    ',
        },
    },

    ---------------------------------------------------------------------------
}

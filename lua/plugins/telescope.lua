return {
    ---------------------------------------------------------------------------

    'nvim-telescope/telescope.nvim',

    ---------------------------------------------------------------------------

    dependencies = {
        { 'nvim-lua/plenary.nvim' },
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

    config = function(_, opts)
        require('telescope').setup(opts)
        require('which-key').add({
            {
                '<leader>ff',
                '<cmd>Telescope fd<CR>',
                icon = '  ',
                desc = 'Files',
            },
            {
                '<leader>ft',
                '<cmd>Telescope live_grep<CR>',
                icon = '  ',
                desc = 'Text',
            },
        })
    end,

    ---------------------------------------------------------------------------
}

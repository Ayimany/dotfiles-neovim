return {
    'nvim-telescope/telescope.nvim',
    name = 'Telescope',


    priority = 999,


    dependencies = {
        'nvim-lua/plenary.nvim'
    },


    keys = {
        {
            '<leader>ff',
            'Telescope find_files'
        },
        {
            '<leader>ft',
            'Telescope live_grep'
        },
        {
            '<leader>fb',
            'Telescope buffers'
        },
        {
            '<leader>fh',
            'Telescope help_tags'
        },
        {
            '<leader>fc',
            'Telescope git_commits'
        },
    },


    opts = {
        defaults = {
            layout_strategy = 'vertical',
            prompt_prefix = '    ',
            selection_caret = '    ',
            multi_icon = '    ',
        }
    }
}

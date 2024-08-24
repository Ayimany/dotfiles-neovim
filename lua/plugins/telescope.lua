return {
    'nvim-telescope/telescope.nvim',
    name = 'Telescope',

    dependencies = {
        'nvim-lua/plenary.nvim'
    },

    keys = {
        {
            '<leader>ff',
            require('telescope.builtin').find_files
        },
        {
            '<leader>ft',
            require('telescope.builtin').live_grep
        },
        {
            '<leader>fb',
            require('telescope.builtin').buffers
        },
        {
            '<leader>fh',
            require('telescope.builtin').help_tags
        },
        {
            '<leader>fc',
            require('telescope.builtin').git_commits
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

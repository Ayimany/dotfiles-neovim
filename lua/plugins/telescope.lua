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
            '<cmd>Telescope find_files<CR>',
            desc = 'Find: Files'
        },
        {
            '<leader>ft',
            '<cmd>Telescope live_grep<CR>',
            desc = 'Find: Text'
        },
        {
            '<leader>fb',
            '<cmd>Telescope buffers<CR>',
            desc = 'Find: Open buffers'
        },
        {
            '<leader>fh',
            '<cmd>Telescope help_tags<CR>',
            desc = 'Find: Help tags'
        },
        {
            '<leader>fc',
            '<cmd>Telescope git_commits<CR>',
            desc = 'Find: Commits'
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

return {
    'nvim-telescope/telescope.nvim',
    name = 'Telescope',

    dependencies = { 'nvim-lua/plenary.nvim' },

    keys = {
        {
            '<leader>ff',
            '<cmd>lua require("telescope.builtin").find_files()<cr>'
        },
        {
            '<leader>fg',
            '<cmd>lua require("telescope.builtin").live_grep()<cr>'
        },
        {
            '<leader>fb',
            '<cmd>lua require("telescope.builtin").buffers()<cr>'
        },
        {
            '<leader>fh',
            '<cmd>lua require("telescope.builtin").help_tags()<cr>'
        }
    }
}

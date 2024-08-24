return {
    'lewis6991/hover.nvim',
    name = 'Hover',

    opts = {
        init = function()
            require('hover.providers.lsp')
            require('hover.providers.diagnostic')
            require('hover.providers.gh')
            require('hover.providers.man')
            require('hover.providers.dictionary')
        end,

        preview_opts = {
            border = 'rounded'
        },

        preview_window = false,
        title = true
    },

    config = function(_, opts)
        local hover = require('hover')
        hover.setup(opts)

        vim.keymap.set('n', 'K', hover.hover, { desc = 'hover.nvim' })
        vim.keymap.set('n', 'gK', hover.hover_select, { desc = 'hover.nvim (select)' })
        vim.keymap.set('n', '<C-p>', function() hover.hover_switch('previous') end,
            { desc = 'hover.nvim (previous source)' })
        vim.keymap.set('n', '<C-n>', function() hover.hover_switch('next') end, { desc = 'hover.nvim (next source)' })
    end
}

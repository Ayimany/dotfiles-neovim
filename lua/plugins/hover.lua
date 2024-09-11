return {
    ---------------------------------------------------------------------------

    'lewis6991/hover.nvim',

    ---------------------------------------------------------------------------

    keys = {
        {
            'K',
            '<cmd>lua require(\'hover\').hover()<cr>',
            desc = 'Hover',
        },
    },

    ---------------------------------------------------------------------------

    opts = {

        init = function()
            require('hover.providers.lsp')
            require('hover.providers.diagnostic')
            require('hover.providers.gh')
            require('hover.providers.dap')
            require('hover.providers.man')
            require('hover.providers.dictionary')
        end,

        preview_opts = {
            border = 'rounded',
        },

        title = true,
        preview_window = false,
    },

    ---------------------------------------------------------------------------
}

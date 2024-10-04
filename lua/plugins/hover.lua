return {
    ---------------------------------------------------------------------------

    'lewis6991/hover.nvim',

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

    config = function(_, opts)
        require('hover').setup(opts)

        require('which-key').add({
            'K',
            '<cmd>lua require(\'hover\').hover()<cr>',
            desc = 'Hover',
        })
    end,

    ---------------------------------------------------------------------------
}

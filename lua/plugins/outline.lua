return {
    ---------------------------------------------------------------------------

    'hedyhli/outline.nvim',

    ---------------------------------------------------------------------------

    keys = {
        {
            '<leader>to',
            '<cmd>Outline<cr>',
            desc = 'Code Outline',
        },
    },

    ---------------------------------------------------------------------------

    opts = {
        symbols = {
            icon_fetcher = function(kind, _)
                local lspkind = require('lspkind')
                local icon = lspkind.symbol_map[kind]

                if icon then
                    return icon
                end

                return kind
            end,
        },
    },

    ---------------------------------------------------------------------------
}

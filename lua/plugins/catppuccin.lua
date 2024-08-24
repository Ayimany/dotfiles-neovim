return {
    'catppuccin/nvim',
    name = 'Catppuccin',


    priority = 1000,


    opts = {
        flavour = 'auto',
        background = {
            light = 'latte',
            dark  = 'mocha'
        },


        transparent_background = true,
        show_end_of_buffer     = true,
        term_colors            = true,


        styles = {
            comments     = { 'italic' },
            conditionals = {},
            loops        = {},
            functions    = { 'italic' },
            keywords     = {},
            strings      = {},
            variables    = { 'italic' },
            numbers      = { 'bold' },
            booleans     = { 'bold' },
            properties   = { 'italic' },
            types        = {},
            operators    = {}
        },


        integrations = {
            cmp                = true,
            gitsigns           = true,
            lsp_trouble        = true,
            mason              = true,
            treesitter         = true,
            treesitter_context = true,


            telescope = {
                enabled = true,
            },


            native_lsp = {
                enabled = true,


                virtual_text = {
                    errors      = { 'italic' },
                    hints       = { 'italic' },
                    warnings    = { 'italic' },
                    information = { 'italic' },
                    ok          = { 'italic' },
                },


                underlines = {
                    errors      = { 'underline' },
                    hints       = { 'underline' },
                    warnings    = { 'underline' },
                    information = { 'underline' },
                    ok          = { 'underline' },
                },


                inlay_hints = {
                    background = true,
                }
            }
        }
    },

    config = true

}

return {
    'catppuccin/nvim',
    name = 'Theming::catppuccin',
    main = 'catppuccin',


    priority = 1000,


    opts = {
        flavour = 'auto',
        background = {
            light = 'latte',
            dark  = 'mocha'
        },


        transparent_background = true,
        show_end_of_buffer     = true,

        dim_inactive = {
            enabled = true
        },

        styles = {
            numbers      = { 'bold' },
            booleans     = { 'bold' },
            operators    = { 'bold' },

            functions    = { 'italic' },
            variables    = { 'italic' },
            properties   = { 'italic' },
        },

        default_integrations = false
    },

    config = function(_, opts)
        require('catppuccin').setup(opts)
        vim.cmd.colorscheme('catppuccin')
    end

}

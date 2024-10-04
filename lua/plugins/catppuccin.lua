return {
    ---------------------------------------------------------------------------

    'catppuccin/nvim',
    name = 'catppuccin',

    ---------------------------------------------------------------------------

    lazy = false,
    priority = 999,

    ---------------------------------------------------------------------------

    opts = {
        flavour = 'auto',

        background = {
            light = 'latte',
            dark = 'mocha',
        },

        transparent_background = true,
        show_end_of_buffer = true,

        dim_inactive = {
            enabled = false,
        },

        styles = {
            numbers = { 'bold' },
            booleans = { 'bold' },
            operators = { 'bold' },

            functions = { 'italic' },
            variables = { 'italic' },
            properties = { 'italic' },
        },

        default_integrations = false,
        integrations = {
            cmp = true,
            dap = true,
            dap_ui = true,
            gitsigns = true,
            mason = true,
            notify = true,
            lsp_trouble = true,
            nvimtree = true,
            treesitter = true,
            treesitter_context = true,
            which_key = true,

            telescope = {
                enabled = true,
            },

            native_lsp = {
                enabled = true,
                virtual_text = {
                    errors = { 'italic' },
                    hints = { 'italic' },
                    warnings = { 'italic' },
                    information = { 'italic' },
                    ok = { 'italic' },
                },
                underlines = {
                    errors = { 'underline' },
                    hints = { 'underline' },
                    warnings = { 'underline' },
                    information = { 'underline' },
                    ok = { 'underline' },
                },
                inlay_hints = {
                    background = true,
                },
            },
        },
    },

    ---------------------------------------------------------------------------
}

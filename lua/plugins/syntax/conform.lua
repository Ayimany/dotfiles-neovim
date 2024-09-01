return {
    'stevearc/conform.nvim',
    name = 'Syntax::conform',
    main = 'conform',

    lazy = true,

    opts = {
        formatters_by_ft = {
            c   = { 'clang-format' },
            cpp = { 'clang-format' },
        },


        format_on_save = {
            timeout_ms = 500,
            lsp_format = 'fallback'
        }
    }
}


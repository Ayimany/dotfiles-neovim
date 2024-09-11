return {
    ---------------------------------------------------------------------------

    'stevearc/conform.nvim',

    ---------------------------------------------------------------------------

    opts = {
        formatters_by_ft = {
            c = { 'clang-format' },
            cpp = { 'clang-format' },
            lua = { 'stylua' },
            python = { 'black' },
        },

        format_on_save = {
            timeout_ms = 500,
            lsp_format = 'fallback',
        },
    },

    ---------------------------------------------------------------------------
}

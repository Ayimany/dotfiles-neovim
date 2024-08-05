return {
    'neovim/nvim-lspconfig',
    name = 'LSPConfig',

    config = function()
        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = true,
            severity_sort = false,
        })

        local signs = {
            Error = '',
            Warn  = '',
            Hint  = '',
            Info  = ''
        }

        for type, icon in pairs(signs) do
            local hl = 'DiagnosticSign' .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end

        require('lsp')
    end
}


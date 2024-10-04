return {
    ---------------------------------------------------------------------------

    'p00f/clangd_extensions.nvim',

    ---------------------------------------------------------------------------

    ft = { 'c', 'cpp' },

    ---------------------------------------------------------------------------

    opts = {
        inlay_hints = {
            inline = true,
            parameter_hints_prefix = '  ',
            other_hints_prefix = '  ',
        },

        ast = {
            role_icons = {
                type = '  ',
                declaration = '  ',
                expression = '  ',
                specifier = '  ',
                statement = '  ',
                ['template argument'] = '  ',
            },

            kind_icons = {
                Compound = '  ',
                Recovery = '  ',
                TranslationUnit = '  ',
                PackExpansion = '  ',
                TemplateTypeParm = '  ',
                TemplateTemplateParm = '  ',
                TemplateParamObject = '  ',
            },
        },

        memory_usage = {
            border = 'rounded',
        },

        symbol_info = {
            border = 'rounded',
        },
    },

    ---------------------------------------------------------------------------

    config = function(_, opts)
        require('clangd_extensions').setup(opts)

        require('which-key').add({
            '<leader>vA',
            '<cmd>ClangdAST<cr>',
            icon = '  ',
            desc = 'View AST',
        }, {
            '<leader>sI',
            '<cmd>ClangdSymbolInfo<cr>',
            icon = '  ',
            desc = 'Symbol Info',
        }, {
            '<leader>sH',
            '<cmd>ClangdTypeHierarchy<cr>',
            icon = '  ',
            desc = 'Symbol Hierarchy',
        }, {
            '<leader>vM',
            '<cmd>ClangdMemoryUsage<cr>',
            icon = '  ',
            desc = 'Memory Usage',
        })
    end,

    ---------------------------------------------------------------------------
}

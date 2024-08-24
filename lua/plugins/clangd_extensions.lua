return {
    'p00f/clangd_extensions.nvim',
    name = 'Clangd Extensions',


    ft = { 'c', 'cpp' },
    -- Move to AutoCmd
    keys = {
        {
            '<leader>CS',
            '<cmd>ClangdSwitchSourceHeader<CR>'
        },
        {
            '<leader>Ch',
            '<cmd>ClangdToggleInlayHints<CR>'
        },
        {
            '<leader>CT',
            '<cmd>ClangdAST<CR>'
        },
        {
            '<leader>Cs',
            '<cmd>ClangdSymbolInfo<CR>'
        },
        {
            '<leader>Ct',
            '<cmd>ClangdTypeHierarchy<CR>'
        },
        {
            '<leader>Cm',
            '<cmd>ClangdMemoryUsage<CR>'
        },
    },


    opts = {
        inlay_hints = {
            parameter_hints_prefix = '  ',
            other_hints_prefix = '  ',
        },


        ast = {
            role_icons = {
                type = '  ',
                declaration = '  ',
                expression = '  ',
                specifier = '  ',
                statement = '  ',
                ['template argument'] = ' ',
            },


            kind_icons = {
                Compound = '  ',
                Recovery = '  ',
                TranslationUnit = '  ',
                PackExpansion = '  ',
                TemplateTypeParm = '  ',
                TemplateTemplateParm = '  ',
                TemplateParamObject = '  ',
            }
        },


        memory_usage = {
            border = 'rounded',
        },


        symbol_info = {
            border = 'rounded',
        }
    }
}

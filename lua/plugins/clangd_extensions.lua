local lset = require('util.langset')

return {
    'p00f/clangd_extensions.nvim',
    name = 'Clangd Extensions',


    ft = lset.c.ft,

    keys = {
        {
            '<leader>lS',
            '<cmd>ClangdSwitchSourceHeader<CR>',
            desc = 'Clang: Switch source-header',
            ft = lset.c.ft
        },
        {
            '<leader>lh',
            '<cmd>ClangdToggleInlayHints<CR>',
            desc = 'Clang: Toggle inlay hints',
            ft = lset.c.ft
        },
        {
            '<leader>lT',
            '<cmd>ClangdAST<CR>',
            desc = 'Clang: Toggle AST',
            ft = lset.c.ft
        },
        {
            '<leader>ls',
            '<cmd>ClangdSymbolInfo<CR>',
            desc = 'Clang: Show symbol info',
            ft = lset.c.ft
        },
        {
            '<leader>lt',
            '<cmd>ClangdTypeHierarchy<CR>',
            desc = 'Clang: Show type hierarchy',
            ft = lset.c.ft
        },
        {
            '<leader>lm',
            '<cmd>ClangdMemoryUsage<CR>',
            desc = 'Clang: Show memory usage',
            ft = lset.c.ft
        },
    },


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
            }
        },


        memory_usage = {
            border = 'rounded',
        },


        symbol_info = {
            border = 'rounded',
        }
    },
}

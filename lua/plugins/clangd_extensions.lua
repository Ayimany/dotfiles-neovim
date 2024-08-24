return {
    'p00f/clangd_extensions.nvim',
    name = 'Clangd Extensions',


    ft = { 'c', 'cpp' },
    -- Move to AutoCmd
    keys = {
        {
            '<leader>lS',
            '<cmd>ClangdSwitchSourceHeader<CR>',
            desc = 'Clang: Switch source-header',
            ft = { 'c', 'cpp' }
        },
        {
            '<leader>lh',
            '<cmd>ClangdToggleInlayHints<CR>',
            desc = 'Clang: Toggle inlay hints',
            ft = { 'c', 'cpp' }
        },
        {
            '<leader>lT',
            '<cmd>ClangdAST<CR>',
            desc = 'Clang: Toggle AST',
            ft = { 'c', 'cpp' }
        },
        {
            '<leader>ls',
            '<cmd>ClangdSymbolInfo<CR>',
            desc = 'Clang: Show symbol info',
            ft = { 'c', 'cpp' }
        },
        {
            '<leader>lt',
            '<cmd>ClangdTypeHierarchy<CR>',
            desc = 'Clang: Show type hierarchy',
            ft = { 'c', 'cpp' }
        },
        {
            '<leader>lm',
            '<cmd>ClangdMemoryUsage<CR>',
            desc = 'Clang: Show memory usage',
            ft = { 'c', 'cpp' }
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

    config = function(_, opts)
        require('clangd_extensions').setup(opts)
        require("clangd_extensions.inlay_hints").setup_autocmd()
        require("clangd_extensions.inlay_hints").set_inlay_hints()
    end
}

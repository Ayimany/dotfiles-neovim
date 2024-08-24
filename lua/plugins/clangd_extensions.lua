return {
    'p00f/clangd_extensions.nvim',
    name = 'Clangd Extensions',

    ft   = { 'c', 'cpp' },

    opts = {
        inlay_hints = {
            only_current_line_autocmd = { 'CursorHold,CursorMoved' },
            parameter_hints_prefix = '󰁍 ',
            other_hints_prefix = '󰁔 ',
        },

        ast = {
            role_icons = {
                type = ' ',
                declaration = ' ',
                expression = ' ',
                specifier = ' ',
                statement = ' ',
                ['template argument'] = ' ',
            },

            kind_icons = {
                Compound = ' ',
                Recovery = ' ',
                TranslationUnit = ' ',
                PackExpansion = ' ',
                TemplateTypeParm = ' ',
                TemplateTemplateParm = ' ',
                TemplateParamObject = ' ',
            }
        },

        memory_usage = {
            border = 'rounded',
        },

        symbol_info = {
            border = 'rounded',
        },

    }

}

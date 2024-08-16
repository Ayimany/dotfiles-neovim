return {
    'hrsh7th/nvim-cmp',
    name = 'Cmp',

    dependencies = {
        { 'hrsh7th/cmp-nvim-lsp', name = 'Cmp Nvim LSP' },
        { 'hrsh7th/cmp-buffer',   name = 'Cmp Buffer' },
        { 'hrsh7th/cmp-path',     name = 'Cmp Path' },
        { 'hrsh7th/cmp-cmdline',  name = 'Cmp Cmdline' },
        { 'L3MON4D3/LuaSnip',     name = 'LuaSnip' }
    },

    config = function()
        local luasnip = require('luasnip')
        local lspkind = require('lspkind')
        local cmp     = require('cmp')

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            window = {
                completion = {
                    winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,Search:None',
                    col_offset = -3,
                    side_padding = 0,
                    border = 'rounded'
                }
            },

            formatting = {
                fields = { 'kind', 'abbr', 'menu' },

                format = function(entry, vim_item)
                    local kind    = lspkind.cmp_format({ mode = 'symbol_text', maxwidth = 50 })(entry, vim_item)
                    local strings = vim.split(kind.kind, '%s', { trimempty = true })
                    kind.kind     = ' ' .. (strings[1] or '') .. ' '
                    kind.menu     = ''

                    return kind
                end

            },

            mapping = cmp.mapping.preset.insert({
                ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                ['<C-u>'] = cmp.mapping.scroll_docs(4),

                ['<C-Space>'] = cmp.mapping.complete(),

                ['<Esc>'] = function(fallback)
                    if (cmp.visible()) then
                        vim.defer_fn(function()
                            vim.cmd('stopinsert')
                        end, 0)
                    else
                        fallback()
                    end
                end,

                ['<CR>'] = cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Replace,
                    select   = false,
                },

                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { 'i', 's' }),

                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { 'i', 's' })

            }),

            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'buffer' }
            })
        })

        cmp.setup.cmdline('/', {
            sources = cmp.config.sources({
                { name = 'buffer' }
            })
        })

        cmp.setup.cmdline(':', {
            sources = cmp.config.sources({
                { name = 'path' },
                { name = 'cmdline' }
            })
        })

        local cmp_autopairs = require('nvim-autopairs.completion.cmp')

        cmp.event:on(
            'confirm_done',
            cmp_autopairs.on_confirm_done()
        )

        local c = require('catppuccin.palettes').get_palette('mocha')

        vim.api.nvim_set_hl(0, 'PmenuSel', { fg = c.text, bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'Pmenu', { fg = c.text, bg = c.surface0 })
        vim.api.nvim_set_hl(0, 'CmpItemAbbr', { fg = c.text, bg = 'NONE' })
        vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { fg = c.surface1, bg = 'NONE', strikethrough = true })
        vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { fg = c.lavender, bg = 'NONE', bold = true })
        vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { fg = c.lavender, bg = 'NONE', bold = true })
        vim.api.nvim_set_hl(0, 'CmpItemMenu', { fg = c.text, bg = 'NONE', italic = true })

        vim.api.nvim_set_hl(0, 'CmpItemKindFile', { bg = 'NONE', fg = c.blue })
        vim.api.nvim_set_hl(0, 'CmpItemKindFolder', { bg = 'NONE', fg = c.blue })

        vim.api.nvim_set_hl(0, 'CmpItemKindField', { bg = 'NONE', fg = c.pink })
        vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { bg = 'NONE', fg = c.pink })
        vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { bg = 'NONE', fg = c.rosewater })

        vim.api.nvim_set_hl(0, 'CmpItemKindConstant', { bg = 'NONE', fg = c.peach })
        vim.api.nvim_set_hl(0, 'CmpItemKindValue', { bg = 'NONE', fg = c.peach })
        vim.api.nvim_set_hl(0, 'CmpItemKindEnumMember', { bg = 'NONE', fg = c.peach })
        vim.api.nvim_set_hl(0, 'CmpItemKindColor', { bg = 'NONE', fg = c.peach })

        vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { bg = 'NONE', fg = c.red })

        vim.api.nvim_set_hl(0, 'CmpItemKindStruct', { bg = 'NONE', fg = c.yellow })
        vim.api.nvim_set_hl(0, 'CmpItemKindClass', { bg = 'NONE', fg = c.yellow })
        vim.api.nvim_set_hl(0, 'CmpItemKindEnum', { bg = 'NONE', fg = c.yellow })
        vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { bg = 'NONE', fg = c.yellow })
        vim.api.nvim_set_hl(0, 'CmpItemKindTypeParameter', { bg = 'NONE', fg = c.yellow })

        vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { bg = 'NONE', fg = c.mauve })
        vim.api.nvim_set_hl(0, 'CmpItemKindOperator', { bg = 'NONE', fg = c.mauve })
        vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { bg = 'NONE', fg = c.mauve })
        vim.api.nvim_set_hl(0, 'CmpItemKindConstructor', { bg = 'NONE', fg = c.mauve })

        vim.api.nvim_set_hl(0, 'CmpItemKindModule', { bg = 'NONE', fg = c.teal })
        vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { bg = 'NONE', fg = c.teal })

        vim.api.nvim_set_hl(0, 'CmpItemKindEvent', { bg = 'NONE', fg = c.yellow })

        vim.api.nvim_set_hl(0, 'CmpItemKindReference', { bg = 'NONE', fg = c.teal })

        vim.api.nvim_set_hl(0, 'CmpItemKindSnippet', { bg = 'NONE', fg = c.surface2 })
        vim.api.nvim_set_hl(0, 'CmpItemKindText', { bg = 'NONE', fg = c.surface2 })
    end


}

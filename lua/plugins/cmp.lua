return {
    ---------------------------------------------------------------------------

    'hrsh7th/nvim-cmp',

    ---------------------------------------------------------------------------

    dependencies = {
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-cmdline' },
        { 'hrsh7th/cmp-calc' },
        { 'L3MON4D3/LuaSnip' },
    },

    ---------------------------------------------------------------------------

    config = function()
        local luasnip = require('luasnip')
        local lspkind = require('lspkind')
        local cmp = require('cmp')

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            performance = {
                debounce = 0,
                throttle = 0,
            },

            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.scroll_docs(-4),
                ['<C-n>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),

                ['<Esc>'] = function(fallback)
                    if cmp.visible() then
                        vim.defer_fn(function()
                            vim.cmd('stopinsert')
                        end, 0)
                    else
                        fallback()
                    end
                end,

                ['<CR>'] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = false,
                }),

                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                        return
                    end

                    if luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                        return
                    end

                    fallback()
                end, { 'i', 's' }),

                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                        return
                    end

                    if luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                        return
                    end

                    fallback()
                end, { 'i', 's' }),
            }),

            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'buffer' },
                { name = 'path' },
            }, {
                { name = 'calc' },
            }),

            sorting = {
                comparators = {
                    cmp.config.compare.offset,
                    cmp.config.compare.exact,
                    cmp.config.compare.recently_used,
                    require('clangd_extensions.cmp_scores'),
                    cmp.config.compare.kind,
                    cmp.config.compare.sort_text,
                    cmp.config.compare.length,
                    cmp.config.compare.order,
                },
            },

            window = {
                completion = {
                    winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,Search:None',
                    border = 'rounded',
                    side_padding = 0,
                    col_offset = -3,
                },
            },

            formatting = {
                fields = { 'kind', 'abbr', 'menu' },

                format = function(entry, vim_item)
                    local kind_fmt = lspkind.cmp_format({
                        mode = 'symbol_text',
                        maxwidth = 50,
                    })

                    local kind = kind_fmt(entry, vim_item)

                    local strings = vim.split(kind.kind, '%s', {
                        trimempty = true,
                    })

                    kind.kind = ' ' .. (strings[1] or '') .. ' '
                    kind.menu = ' ' .. (strings[2] or '') .. ' '

                    return kind
                end,
            },
        })

        cmp.setup.cmdline('/', {
            sources = cmp.config.sources({
                { name = 'buffer' },
            }),
        })

        cmp.setup.cmdline(':', {
            sources = cmp.config.sources({
                { name = 'path' },
                { name = 'cmdline' },
            }),
        })
    end,

    ---------------------------------------------------------------------------
}

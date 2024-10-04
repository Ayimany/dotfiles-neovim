return {
    ---------------------------------------------------------------------------

    'hrsh7th/nvim-cmp',

    ---------------------------------------------------------------------------

    event = 'VeryLazy',

    ---------------------------------------------------------------------------

    dependencies = {
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-cmdline' },
        { 'hrsh7th/cmp-calc' },
        { 'hrsh7th/cmp-nvim-lsp-document-symbol' },
        { 'hrsh7th/cmp-nvim-lsp-signature-help' },
        { 'paopaol/cmp-doxygen' },
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
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),

                ['<CR>'] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = false,
                }),

                ['<Esc>'] = function(fallback)
                    if cmp.visible() then
                        vim.defer_fn(function()
                            vim.cmd('stopinsert')
                        end, 0)
                    else
                        fallback()
                    end
                end,
            }),

            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            }, {
                { name = 'nvim_lsp_signature_help' },
            }, {
                { name = 'doxygen' },
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
                    kind.menu = ' '

                    return kind
                end,
            },
        })

        cmp.setup.cmdline('/', {
            sources = cmp.config.sources({
                { name = 'nvim_lsp_document_symbol' },
            }, {
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

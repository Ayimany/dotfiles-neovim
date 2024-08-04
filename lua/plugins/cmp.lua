return {
    'hrsh7th/nvim-cmp',
    name = 'Cmp',

    dependencies = {
        { 'hrsh7th/cmp-nvim-lsp', name = "Cmp Nvim LSP" },
        { 'hrsh7th/cmp-buffer', name = "Cmp Buffer" },
        { 'hrsh7th/cmp-path', name = "Cmp Path" },
        { 'hrsh7th/cmp-cmdline', name = "Cmp Cmdline" },
        { 'L3MON4D3/LuaSnip', name = 'LuaSnip' }
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
                    winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                    col_offset = -3,
                    side_padding = 0,
                }
            },

            formatting = {
                fields = { "kind", "abbr", "menu" },

                format = function(entry, vim_item)
                    local kind    = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
                    local strings = vim.split(kind.kind, "%s", { trimempty = true })
                    kind.kind     = " " .. (strings[1] or "") .. " "
                    kind.menu     = "    (" .. (strings[2] or "") .. ")"

                    return kind
                end

            },

            mapping = cmp.mapping.preset.insert({
                ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                ['<C-u>'] = cmp.mapping.scroll_docs(4),

                ['<C-Space>'] = cmp.mapping.complete(),

                ["<Esc>"] = function (fallback)
                    if (cmp.visible()) then
                        cmp.abort()
                        vim.defer_fn(function ()
                            vim.cmd("stopinsert")
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

    end
}


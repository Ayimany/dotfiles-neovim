local lspconfig = require('lspconfig')
local wk = require('which-key')

local lsp_attach = function(_, bufnr)
    wk.add({
        {
            '<leader>lc',
            vim.lsp.buf.code_action,
            desc = 'Code Actions',
            icon = '  ',
        },
        {
            '<leader>sr',
            vim.lsp.buf.rename,
            icon = ' 󰙴 ',
        },
    })
end

lspconfig.lua_ls.setup({})

lspconfig.neocmake.setup({})

lspconfig.clangd.setup({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    lsp_attach = lsp_attach,
    sign_text = true,

    on_attach = function()
        require('clangd_extensions.inlay_hints').setup_autocmd()
        require('clangd_extensions.inlay_hints').set_inlay_hints()
    end,
})

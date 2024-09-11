local lspconfig = require('lspconfig')
local lsp_zero = require('lsp-zero')
local wk = require('which-key')

local lsp_attach = function(_, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr, exclude = { 'K' } })

    require('nvim-treesitter')
    require('conform')

    wk.add({
        {
            '<leader>lc',
            vim.lsp.buf.code_action,
            desc = 'Code Actions',
            icon = '  ',
        },
    })
end

lsp_zero.extend_lspconfig({
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    lsp_attach = lsp_attach,
    sign_text = true,
})

lspconfig.lua_ls.setup({})

lspconfig.pylsp.setup({})

lspconfig.clangd.setup({
    on_attach = function()
        require('clangd_extensions.inlay_hints').setup_autocmd()
        require('clangd_extensions.inlay_hints').set_inlay_hints()
    end,
})

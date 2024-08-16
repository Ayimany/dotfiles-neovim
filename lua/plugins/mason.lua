return {
    'williamboman/mason-lspconfig.nvim',
    name = 'Mason LSPConfig',

    dependencies = {
        {
            'williamboman/mason.nvim',
            name = 'Mason',
            opts = {
                ui = {
                    border = 'rounded',
                    icons = {
                        package_installed   = '󱧕',
                        package_pending     = '󱧔',
                        package_uninstalled = '󱧖'
                    }
                }
            }
        }
    },

    opts = {
        ensure_installed = {
            'clangd',
            'lua_ls',
            'pylsp',
        }
    }
}

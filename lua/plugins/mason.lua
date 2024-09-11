return {
    ---------------------------------------------------------------------------

    {
        -----------------------------------------------------------------------

        'williamboman/mason.nvim',

        -----------------------------------------------------------------------

        lazy = false,

        -----------------------------------------------------------------------

        opts = {
            ui = {
                border = 'rounded',

                icons = {
                    package_installed = ' 󱧕 ',
                    package_pending = ' 󱧔 ',
                    package_uninstalled = ' 󱧖 ',
                },
            },
        },

        -----------------------------------------------------------------------
    },

    ---------------------------------------------------------------------------

    {
        -----------------------------------------------------------------------

        'WhoIsSethDaniel/mason-tool-installer.nvim',

        -----------------------------------------------------------------------

        lazy = false,

        -----------------------------------------------------------------------

        opts = {
            auto_update = true,
            ensure_installed = {
                -- C
                'clang-format',
                'clangd',
                'cmakelint',
                'codelldb',
                'neocmakelsp',

                -- Python
                'black',
                'debugpy',
                'python-lsp-server',

                -- Lua
                'lua-language-server',
                'luacheck',
                'stylua',
            },
        },

        -----------------------------------------------------------------------
    },

    ---------------------------------------------------------------------------
}

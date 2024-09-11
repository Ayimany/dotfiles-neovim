return {
    ---------------------------------------------------------------------------

    'nvim-lualine/lualine.nvim',

    ---------------------------------------------------------------------------

    depencies = {
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    ---------------------------------------------------------------------------

    event = 'VeryLazy',

    ---------------------------------------------------------------------------

    opts = {
        options = {
            theme = 'catppuccin',

            icons_enabled = true,
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
        },

        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff' },
            lualine_c = { 'filename', 'diagnostics' },

            lualine_x = {
                'encoding',
                'fileformat',
                'filetype',
            },
            lualine_y = {
                'filesize',
            },
            lualine_z = {
                'location',
                'progress',
                'selectioncount',
                'searchcount',
            },
        },
    },

    ---------------------------------------------------------------------------
}

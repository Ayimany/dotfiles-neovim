return {
    'nvim-lualine/lualine.nvim',
    name = 'Theming::lualine',
    main = 'lualine',

    opts = {
        options = {
            icons_enabled = true,
            theme = 'catppuccin',
            component_separators = { left = '', right = ''},
            section_separators   = { left = '', right = ''},
        },

        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff' },
            lualine_c = { 'filename', 'diagnostics' },

            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'filesize' },
            lualine_z = { 'location', 'progress', 'selectioncount', 'searchcount' }
        }
    },

    config = true
}


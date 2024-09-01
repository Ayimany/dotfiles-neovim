return {
    'windwp/nvim-autopairs',
    name = 'Syntax::autopairs',
    main = 'nvim-autopairs',

    event = 'InsertEnter',

    opts = {
        disable_filetype = {
            'TelescopePrompt',
            'fugitive',
            'lazy',
            'mason'
        }
    },

    config = true
}


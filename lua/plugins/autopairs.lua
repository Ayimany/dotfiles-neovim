return {
    'windwp/nvim-autopairs',
    name = 'AutoPairs',

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

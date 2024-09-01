return {
    {
        'nvim-treesitter/nvim-treesitter',
        name  = 'Syntax::treesitter',
        main  = 'nvim-treesitter.configs',


        build = ':TSUpdate',


        opts = {
            ensure_installed = {
                'c', 'cpp'
            },

            auto_install = true,

            highlight = {
                enable = true,

                disable = function(_, buf)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(buf))

                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,

                additional_vim_regex_highlighting = false,
            }
        }
    },

    -- Will come into play later

    {
        'nvim-treesitter/nvim-treesitter-refactor',
        name = 'Syntax::treesitter_refactor',
        config = false
    },

    {
        'nvim-treesitter/nvim-treesitter-textobjects',
        name = 'Syntax::treesitter_textobjects',
        config = false
    }
}

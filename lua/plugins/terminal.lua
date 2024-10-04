return {
    ---------------------------------------------------------------------------

    'rebelot/terminal.nvim',

    ---------------------------------------------------------------------------

    opts = {
        layout = { open_cmd = 'botright new' },
        cmd = { vim.o.shell },
        autoclose = false,
    },

    ---------------------------------------------------------------------------

    config = function(_, opts)
        require('terminal').setup(opts)
        require('which-key').add({
            {
                '<leader><leader>',
                '<cmd>TermOpen<cr>',
                icon = '  ',
                group = 'Terminal',
            },
        })
    end,

    ---------------------------------------------------------------------------
}

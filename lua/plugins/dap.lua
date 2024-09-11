return {
    {
        -------------------------------------------------------------------------------

        'mfussenegger/nvim-dap',

        -------------------------------------------------------------------------------

        keys = {
            {
                '<leader>db',
                '<cmd>DapToggleBreakpoint<cr>',
                desc = 'Toggle Breakpoint',
            },
            {
                '<leader>dc',
                '<cmd>DapContinue<cr>',
                desc = 'Continue',
            },
            {
                '<leader>ds',
                '<cmd>DapStepInto<cr>',
                desc = 'Step Into',
            },
            {
                '<leader>dS',
                '<cmd>DapStepOut<cr>',
                desc = 'Step Out',
            },
            {
                '<leader>do',
                '<cmd>DapStepOver<cr>',
                desc = 'Step Over',
            },
            {
                '<leader>dr',
                '<cmd>DapToggleRepl<cr>',
                desc = 'Toggle Repl',
            },
        },

        -------------------------------------------------------------------------------

        config = function(_, opts)
            require('daps')
        end,
    },
    {
        -------------------------------------------------------------------------------

        'rcarriga/nvim-dap-ui',

        -------------------------------------------------------------------------------
    },
    {
        ---------------------------------------------------------------------------

        'theHamsta/nvim-dap-virtual-text',

        ---------------------------------------------------------------------------
    },
}

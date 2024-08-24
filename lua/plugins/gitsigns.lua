return {
    'lewis6991/gitsigns.nvim',
    name = 'Gitsigns',

    lazy = false,

    keys = {
        {
            '<leader>gb',
            function()
                require('gitsigns').blame_line({ fill = true })
            end },

        {
            ']c',
            function()
                if vim.wo.diff then return ']c' end
                vim.schedule(function()
                    require('gitsigns').next_hunk()
                end)
                return '<Ignore>'
            end, { expr = true, buffer = vim.bufnr }
        },

        {
            '[c',
            function()
                if vim.wo.diff then return '[c' end
                vim.schedule(function()
                    require('gitsigns').prev_hunk()
                end)
                return '<Ignore>'
            end, { expr = true, buffer = vim.bufnr }
        },

        {
            '<leader>gh',
            function()
                require('gitsigns').stage_hunk()
            end, { buffer = vim.bufnr }
        },

        {
            '<leader>gH',
            function()
                require('gitsigns').undo_stage_hunk()
            end, { buffer = vim.bufnr }
        },

        {
            '<leader>gs',
            function()
                require('gitsigns').stage_buffer()
            end, { buffer = vim.bufnr }
        },

        {
            '<leader>gS',
            function()
                require('gitsigns').unstage_buffer()
            end, { buffer = vim.bufnr }
        },

        {
            '<leader>gr',
            function()
                require('gitsigns').reset_hunk()
            end, { buffer = vim.bufnr }
        },

        {
            '<leader>gR',
            function()
                require('gitsigns').reset_buffer()
            end, { buffer = vim.bufnr }
        },

        {
            '<leader>gv',
            '<cmd>Gitsigns select_hunk<CR>',
            { buffer = vim.bufnr }
        }
    },

    opts = {
        signs                        = {
            add          = { text = '' },
            change       = { text = '' },
            delete       = { text = '' },
            topdelete    = { text = '' },
            changedelete = { text = '' },
            untracked    = { text = '' },
        },

        signs_staged                 = {
            add          = { text = '' },
            change       = { text = '' },
            delete       = { text = '' },
            topdelete    = { text = '' },
            changedelete = { text = '' },
            untracked    = { text = '' },
        },

        signs_staged_enable          = true,
        signcolumn                   = true,
        numhl                        = false,
        linehl                       = false,
        word_diff                    = false,

        watch_gitdir                 = {
            follow_files = true
        },

        auto_attach                  = true,
        attach_to_untracked          = false,
        current_line_blame           = true,

        current_line_blame_opts      = {
            virt_text          = true,
            virt_text_pos      = 'eol',
            delay              = 1000,
            ignore_whitespace  = false,
            virt_text_priority = 100,
        },

        current_line_blame_formatter = '  <author> |   <summary>',
        sign_priority                = 6,
        update_debounce              = 100,
        status_formatter             = nil,
        max_file_length              = 40000,

        preview_config               = {
            border   = 'rounded',
            style    = 'minimal',
            relative = 'cursor',
            row      = 0,
            col      = 1
        }
    }
}

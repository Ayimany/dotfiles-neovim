return {
    ---------------------------------------------------------------------------

    'lewis6991/gitsigns.nvim',

    ---------------------------------------------------------------------------

    opts = {
        signs = {
            add = { text = '' },
            change = { text = '' },
            delete = { text = '' },
            topdelete = { text = '' },
            changedelete = { text = '' },
            untracked = { text = '' },
        },

        signs_staged = {
            add = { text = '' },
            change = { text = '' },
            delete = { text = '' },
            topdelete = { text = '' },
            changedelete = { text = '' },
            untracked = { text = '' },
        },

        signs_staged_enable = true,
        signcolumn = true,
        numhl = false,
        linehl = false,
        word_diff = false,

        watch_gitdir = {
            follow_files = true,
        },

        auto_attach = true,
        attach_to_untracked = false,
        current_line_blame = true,

        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'eol',
            delay = 1000,
            ignore_whitespace = false,
            virt_text_priority = 100,
        },

        current_line_blame_formatter = '  <author> |   <summary>',
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil,
        max_file_length = 40000,

        preview_config = {
            border = 'rounded',
            style = 'minimal',
            relative = 'cursor',
            row = 0,
            col = 1,
        },
    },

    ---------------------------------------------------------------------------

    config = function(_, opts)
        require('gitsigns').setup(opts)

        require('which-key').add({
            {
                '[c',
                '<cmd>Gitsigns prev_hunk<cr>',
                icon = '  ',
                desc = 'Jump to the previous change',
            },
            {
                ']c',
                '<cmd>Gitsigns next_hunk<cr>',
                icon = '  ',
                desc = 'Jump to the next change',
            },
            {
                '<leader>gs',
                '<cmd>Gitsigns stage_buffer<cr>',
                icon = '  ',
                desc = 'Stage Buffer',
            },
            {
                '<leader>gh',
                '<cmd>Gitsigns stage_hunk<cr>',
                icon = '  ',
                desc = 'Stage Hunk',
            },
            {
                '<leader>gH',
                '<cmd>Gitsigns undo_stage_hunk<cr>',
                icon = '  ',
                desc = 'Unstage Hunk',
            },
            {
                '<leader>vd',
                '<cmd>Gitsigns diffthis<cr>',
                icon = '  ',
                desc = 'View Diff',
            },
            {
                '<leader>vc',
                '<cmd>Gitsigns toggle_word_diff<cr>',
                icon = '  ',
                desc = 'View Changes',
            },
            {
                '<leader>vD',
                '<cmd>Gitsigns toggle_deleted<cr>',
                icon = '  ',
                desc = 'View Deleted',
            },
        })
    end,

    ---------------------------------------------------------------------------
}

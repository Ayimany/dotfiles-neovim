return {
    'lewis6991/gitsigns.nvim',
    name = 'Gitsigns',

    lazy = false,

    keys = {
        {
            '<leader>gb',
            '<cmd>Gitsigns blame_line<CR>',
            desc = 'Git: Blame line'
        },
        {
            ']c',
            '<cmd>Gitsigns next_hunk<CR>',
            desc = 'Git: Next change'
        },
        {
            '[c',
            '<cmd>Gitsigns prev_hunk<CR>',
            desc = 'Git: Previous change'
        },
        {
            '<leader>gsh',
            '<cmd>Gitsigns stage_hunk<CR>',
            desc = 'Git: Stage hunk'
        },
        {
            '<leader>gsH',
            '<cmd>Gitsigns undo_stage_hunk<CR>',
            desc = 'Git: Unstage hunk'
        },
        {
            '<leader>grh',
            '<cmd>Gitsigns reset_hunk<CR>',
            desc = 'Git: Reset hunk'
        },
        {
            '<leader>gsb',
            '<cmd>Gitsigns stage_buffer<CR>',
            desc = 'Git: Stage buffer'
        },
        {
            '<leader>grb',
            '<cmd>Gitsigns _buffer<CR>',
            desc = 'Git: Reset buffer'
        },
        {
            '<leader>gdd',
            '<cmd>Gitsigns toggle_deleted<CR>',
            desc = 'Git: Show deleted'
        },
        {
            '<leader>gdp',
            '<cmd>Gitsigns preview_hunk<CR>',
            desc = 'Git: Diff preview'
        },
        {
            '<leader>gvh',
            '<cmd>Gitsigns select_hunk<CR>',
            desc = 'Git: Select hunk'
        }
    },


    opts = {
        signs = {
            add          = { text = '' },
            change       = { text = '' },
            delete       = { text = '' },
            topdelete    = { text = '' },
            changedelete = { text = '' },
            untracked    = { text = '' },
        },


        signs_staged = {
            add          = { text = '' },
            change       = { text = '' },
            delete       = { text = '' },
            topdelete    = { text = '' },
            changedelete = { text = '' },
            untracked    = { text = '' },
        },


        signs_staged_enable = true,
        signcolumn          = true,
        numhl               = false,
        linehl              = false,
        word_diff           = false,


        watch_gitdir = {
            follow_files = true
        },


        auto_attach         = true,
        attach_to_untracked = false,
        current_line_blame  = true,


        current_line_blame_opts = {
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


        preview_config = {
            border   = 'rounded',
            style    = 'minimal',
            relative = 'cursor',
            row      = 0,
            col      = 1
        }
    }
}

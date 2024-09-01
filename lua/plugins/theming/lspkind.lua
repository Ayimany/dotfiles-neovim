return {
    'onsails/lspkind.nvim',
    name = 'Theming::lspkind',
    main = 'lspkind',

    opts = {
        mode = 'symbol_text',

        symbol_map = {
            Text          = '',
            Method        = '',
            Function      = '',
            Constructor   = '',
            Field         = '󰏄',
            Variable      = '♥',
            Class         = '',
            Interface     = '',
            Module        = '',
            Property      = '',
            Unit          = '',
            Value         = '',
            Enum          = '',
            Keyword       = '',
            Snippet       = '',
            Color         = '',
            File          = '',
            Reference     = '',
            Folder        = '',
            EnumMember    = '',
            Constant      = '',
            Struct        = '',
            Event         = '⚡',
            Operator      = '',
            TypeParameter = '',
        }
    },

    config = true
}


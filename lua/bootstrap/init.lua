-- Main Bootstrapping Module
-- Loads Lazy.nvim

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        '--branch=stable',
        lazyrepo,
        lazypath,
    })

    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
            { out, 'WarningMsg' },
            { '\nPress any key to exit...' },
        }, true, {})

        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    lockfile = vim.fn.stdpath('config') .. '.lazy/lockfile.json',

    spec = {
        { import = 'plugins' },
    },

    install = {
        colorscheme = { 'catppuccin-mocha' },
    },

    checker = {
        enabled = true,
        notify = false,
    },

    change_detection = {
        enabled = false,
        notify = false,
    },

    ui = {
        wrap = false,
        border = 'rounded',
        title = '   Manage Plugins   ',
        icons = {
            cmd = '  ',
            config = '  ',
            event = '  ',
            favorite = '  ',
            ft = '  ',
            init = '  ',
            import = '  ',
            keys = '  ',
            lazy = ' 󰒲 ',
            loaded = '  ',
            not_loaded = '  ',
            plugin = '  ',
            runtime = '  ',
            require = '  ',
            source = '  ',
            start = '  ',
            task = '  ',
            list = {
                '  ',
                '  ',
                '  ',
                '  ',
            },
        },
    },

    performance = {
        rtp = {
            disabled_plugins = {
                'gzip',
                'matchit',
                'netrwPlugin',
                'tarPlugin',
                'tohtml',
                'tutor',
                'zipPlugin',
            },
        },
    },
})

-- Automatically update plugins (If updates are available)
vim.api.nvim_create_autocmd('VimEnter', {
    group = vim.api.nvim_create_augroup(
        'lazyvim_auto_update',
        { clear = true }
    ),
    callback = function()
        if require('lazy.status').has_updates then
            require('lazy').update({ show = false })
        end
    end,
})

-- Override highlights
--
-- -- A value of nil causes an auto-select of the current flavor
-- local c = require('catppuccin.palettes').get_palette(nil)
--
-- vim.api.nvim_set_hl(0, 'PmenuSel'                , { fg = c.text    , bg = 'NONE'                       })
-- vim.api.nvim_set_hl(0, 'Pmenu'                   , { fg = c.text    , bg = c.base                       })
-- vim.api.nvim_set_hl(0, 'CmpItemAbbr'             , { fg = c.text    , bg = 'NONE'                       })
-- vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated'   , { fg = c.surface1, bg = 'NONE', strikethrough = true })
-- vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch'        , { fg = c.lavender, bg = 'NONE', bold          = true })
-- vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy'   , { fg = c.lavender, bg = 'NONE', bold          = true })
-- vim.api.nvim_set_hl(0, 'CmpItemMenu'             , { fg = c.text    , bg = 'NONE', italic        = true })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindFile'         , { bg = 'NONE', fg = c.blue                           })
-- vim.api.nvim_set_hl(0, 'CmpItemKindFolder'       , { bg = 'NONE', fg = c.blue                           })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindField'        , { bg = 'NONE', fg = c.pink     , italic = true       })
-- vim.api.nvim_set_hl(0, 'CmpItemKindProperty'     , { bg = 'NONE', fg = c.pink     , italic = true       })
-- vim.api.nvim_set_hl(0, 'CmpItemKindVariable'     , { bg = 'NONE', fg = c.rosewater, italic = true       })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindConstant'     , { bg = 'NONE', fg = c.peach                          })
-- vim.api.nvim_set_hl(0, 'CmpItemKindValue'        , { bg = 'NONE', fg = c.peach                          })
-- vim.api.nvim_set_hl(0, 'CmpItemKindEnumMember'   , { bg = 'NONE', fg = c.peach                          })
-- vim.api.nvim_set_hl(0, 'CmpItemKindColor'        , { bg = 'NONE', fg = c.peach                          })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindKeyword'      , { bg = 'NONE', fg = c.red                            })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindStruct'       , { bg = 'NONE', fg = c.yellow                         })
-- vim.api.nvim_set_hl(0, 'CmpItemKindClass'        , { bg = 'NONE', fg = c.yellow                         })
-- vim.api.nvim_set_hl(0, 'CmpItemKindEnum'         , { bg = 'NONE', fg = c.yellow                         })
-- vim.api.nvim_set_hl(0, 'CmpItemKindInterface'    , { bg = 'NONE', fg = c.yellow                         })
-- vim.api.nvim_set_hl(0, 'CmpItemKindTypeParameter', { bg = 'NONE', fg = c.yellow                         })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindFunction'     , { bg = 'NONE', fg = c.mauve, italic = true           })
-- vim.api.nvim_set_hl(0, 'CmpItemKindOperator'     , { bg = 'NONE', fg = c.mauve, italic = true           })
-- vim.api.nvim_set_hl(0, 'CmpItemKindMethod'       , { bg = 'NONE', fg = c.mauve, italic = true           })
-- vim.api.nvim_set_hl(0, 'CmpItemKindConstructor'  , { bg = 'NONE', fg = c.mauve, italic = true           })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindModule'       , { bg = 'NONE', fg = c.teal                           })
-- vim.api.nvim_set_hl(0, 'CmpItemKindUnit'         , { bg = 'NONE', fg = c.teal                           })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindEvent'        , { bg = 'NONE', fg = c.yellow                         })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindReference'    , { bg = 'NONE', fg = c.teal                           })
--
-- vim.api.nvim_set_hl(0, 'CmpItemKindSnippet'      , { bg = 'NONE', fg = c.surface2                       })
-- vim.api.nvim_set_hl(0, 'CmpItemKindText'         , { bg = 'NONE', fg = c.surface2                       })
--

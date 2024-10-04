local function tab_win_closed(winnr)
    local api = require('nvim-tree.api')
    local tabnr = vim.api.nvim_win_get_tabpage(winnr)
    local bufnr = vim.api.nvim_win_get_buf(winnr)
    local buf_info = vim.fn.getbufinfo(bufnr)[1]
    local tab_wins = vim.tbl_filter(function(w)
        return w ~= winnr
    end, vim.api.nvim_tabpage_list_wins(tabnr))
    local tab_bufs = vim.tbl_map(vim.api.nvim_win_get_buf, tab_wins)
    if buf_info.name:match('.*NvimTree_%d*$') then
        if not vim.tbl_isempty(tab_bufs) then
            api.tree.close()
        end
    else
        if #tab_bufs == 1 then
            local last_buf_info = vim.fn.getbufinfo(tab_bufs[1])[1]
            if last_buf_info.name:match('.*NvimTree_%d*$') then
                vim.schedule(function()
                    if #vim.api.nvim_list_wins() == 1 then
                        vim.cmd('quit')
                    else
                        vim.api.nvim_win_close(tab_wins[1], true)
                    end
                end)
            end
        end
    end
end

return {
    ---------------------------------------------------------------------------

    'nvim-tree/nvim-tree.lua',

    ---------------------------------------------------------------------------

    dependencies = {
        { 'nvim-tree/nvim-web-devicons' },
    },

    ---------------------------------------------------------------------------

    opts = {},

    ---------------------------------------------------------------------------

    config = function(_, opts)
        require('nvim-tree').setup(opts)
        require('which-key').add({
            {
                '<leader>]',
                '<cmd>NvimTreeFocus<cr>',
                desc = 't r e e',
            },
        })

        vim.api.nvim_create_autocmd({ 'VimEnter' }, {
            callback = function(data)
                local real_file = vim.fn.filereadable(data.file) == 1

                local no_name = data.file == ''
                    and vim.bo[data.buf].buftype == ''

                if not real_file and not no_name then
                    return
                end

                require('nvim-tree.api').tree.toggle({
                    focus = false,
                    find_file = true,
                })
            end,
        })

        vim.api.nvim_create_autocmd('WinClosed', {
            callback = function()
                local winnr = tonumber(vim.fn.expand('<amatch>'))
                vim.schedule_wrap(tab_win_closed(winnr))
            end,
            nested = true,
        })
    end,

    ---------------------------------------------------------------------------
}

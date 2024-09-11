local dap = require('dap')
local dapu = require('dap.utils')

dap.adapters.codelldb = {
    type = 'server',
    host = '127.0.0.1',
    port = '${port}',
    pid = dapu.pick_process,
    executable = {
        command = 'codelldb',
        args = { '--port', '${port}' },
    },
}

dap.configurations.cpp = {
    {
        name = 'Launch file',
        type = 'codelldb',
        request = 'launch',
        program = function()
            return vim.fn.input(
                'Path to executable: ',
                vim.fn.getcwd() .. '/',
                'file'
            )
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    },
}

dap.configurations.c = dap.configurations.cpp

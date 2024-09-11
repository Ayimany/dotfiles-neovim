# Neovim Dotfiles
Personal [neovim](https://neovim.io/) configuration.

Feel free to use it.

## Plugin Loading Hierarchy
Event | Plugin | Priority
--- | --- | ---
\<Always\> | Catppuccin | 999
VeryLazy | Lualine | 998
VeryLazy | Which-Key | 998
VeryLazy | Notify | 997
InsertEnter | Mason | 899, 898
\<After Mason\> | Mason Lspconfig | 897
\<After Mason\> | Lint | 896
\<After Mason\> | Mason Lint | 895
\<After Mason\> | Mason Dap | 894
\<After Mason\> | Lspconfig | 893
\<LSP Availble\> | Treesitter | 799
\<LSP Availble\> | Cmp | 798
\<Git Repo\> | Fugitive | 699
\<Git Repo\> | Gitsigns | 699
BufWritePre | Conform | 599
\<Keybind\> | Telescope | ...
\<Keybind\> | DAP | ...
\<Keybind\> | Hover | ...
\<Keybind\> | Neogen | ...
\<Require\> | Lspkind | ...

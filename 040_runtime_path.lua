
lua vim.cmd('echo "hi"')

--	print names of all global variables, stored in _G
vim.cmd('echo nvim_list_runtime_paths()')


-- also works
local x = vim.cmd('echo nvim_list_runtime_paths()')
 ---------------------------------------------------
print(x)


 ---------------------------------------------------
--      PRINT large output to register a;   :REDIR @a
 ---------------------------------------------------
-- :redir @a      (register a)
-- :lua print(vim.inspect(nvim_list_runtime_paths()))
-- :redir END



{ "/home/jim/.config/nvim", "/home/jim/.local/share/nvim/lazy/lazy.nvim", "/home/jim/.local/share/nvim/lazy/nvim-navic", "/home/jim/.local/share/nvim/lazy/vim-illuminate", "/home/jim/.local/share/nvim/lazy/indent-blankline.nvim", "/home/jim/.local/share/nvim/lazy/nvim-treesitter", "/home/jim/.local/share/nvim/lazy/todo-comments.nvim", "/home/jim/.local/share/nvim/lazy/mini.indentscope", "/home/jim/.local/share/nvim/lazy/null-ls.nvim", "/home/jim/.local/share/nvim/lazy/mason-lspconfig.nvim", "/home/jim/.local/share/nvim/lazy/mason.nvim", "/home/jim/.local/share/nvim/lazy/neodev.nvim", "/home/jim/.local/share/nvim/lazy/neoconf.nvim", "/home/jim/.local/share/nvim/lazy/SchemaStore.nvim", "/home/jim/.local/share/nvim/lazy/nvim-lspconfig", "/home/jim/.local/share/nvim/lazy/persistence.nvim", "/home/jim/.local/share/nvim/lazy/gitsigns.nvim", "/home/jim/.local/share/nvim/lazy/friendly-snippets", "/home/jim/.local/share/nvim/lazy/LuaSnip", "/home/jim/.local/share/nvim/lazy/cmp_luasnip", "/home/jim/.local/share/nvim/lazy/cmp-path", "/home/jim/.local/share/nvim/lazy/cmp-buffer", "/home/jim/.local/share/nvim/lazy/cmp-nvim-lsp", "/home/jim/.local/share/nvim/lazy/cmp-emoji", "/home/jim/.local/share/nvim/lazy/nvim-cmp", "/home/jim/.local/share/nvim/lazy/neo-tree.nvim", "/home/jim/.local/share/nvim/lazy/nvim-web-devicons", "/home/jim/.local/share/nvim/lazy/nvim-notify", "/home/jim/.local/share/nvim/lazy/nui.nvim", "/home/jim/.local/share/nvim/lazy/plenary.nvim", "/home/jim/.local/share/nvim/lazy/telescope-fzf-native.nvim", "/home/jim/.local/share/nvim/lazy/telescope.nvim", "/home/jim/.local/share/nvim/lazy/mini.pairs", "/home/jim/.local/share/nvim/lazy/vim-repeat", "/home/jim/.local/share/nvim/lazy/which-key.nvim", "/home/jim/.local/share/nvim/lazy/nvim-treesitter-textobjects", "/home/jim/.local/share/nvim/lazy/mini.ai", "/home/jim/.local/share/nvim/lazy/lualine.nvim", "/home/jim/.local/share/nvim/lazy/noice.nvim", "/home/jim/.local/share/nvim/lazy/bufferline.nvim", "/home/jim/.local/share/nvim/lazy/mini.comment", "/home/jim/.local/share/nvim/lazy/mini.starter", "/home/jim/.local/share/nvim/lazy/Nvim-R", "/home/jim/.local/share/nvim/lazy/gruvbox.nvim", "/home/jim/.local/share/nvim/lazy/LazyVim", "/tmp/.mount_nvimlmshit/usr/share/nvim/runtime", "/tmp/.mount_nvimlmshit/usr/share/nvim/runtime/pack/dist/opt/matchit", "/tmp/.mount_nvimlmshit/usr/lib/nvim", "/home/jim/.local/state/nvim/lazy/readme", "/home/jim/.local/share/nvim/lazy/cmp_luasnip/after", "/home/jim/.local/share/nvim/lazy/cmp-path/after", "/home/jim/.local/share/nvim/lazy/cmp-buffer/after", "/home/jim/.local/share/nvim/lazy/cmp-nvim-lsp/after", "/home/jim/.local/share/nvim/lazy/cmp-emoji/after" }
 ---------------------------------------------------





 local f = assert(io.open('out', "w"))
    local t = f:write(x)
    f:close()




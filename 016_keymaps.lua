--  016_keymaps.lua
--
--  PURPOSE: misc keymaps
--  USAGE:  :so   to source
--
--  FACTS- these work
--  : echo bufnr()
--  : echo bufname()
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {}) -- exit insert


-- this buf only (0); hit <C-o> in insert mode will insert new line at cursor
vim.api.nvim_buf_set_keymap(0, 'i', '<C-o>', '<esc>o', {})



-- improve indents
-- vim.api.nvim_buf_set_keymap(0, 'n', '<', '<gv', { 'noremap' })


--------------------------------
-- SEE kickstart/keymaps.lua
--------------------------------
-- open terminal
vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>]t', ':split term://zsh<CR>', {})

-- NOTE:   that is double backslash (near right pinke finger)
vim.cmd([[:tnoremap <Esc> <C-\\><C-n> ]])
vim.cmd([[ autocmd TermOpen * startinsert]])


vim.cmd([[ :tnoremap <C-h> <C-\\><C-n><C-w>h ]])
vim.cmd([[ :tnoremap <C-l> <C-\\><C-n><C-w>l ]])

vim.cmd([[ autocmd BufEnter term://* startinsert]])
--------------------------------

-- vim.bo.buftype   "" if normal;  'terminal" if terminal, "help" if help

-- current buf ONLY
vim.api.nvim_buf_set_keymap(0, 'n', '<Leader>bt', ':lua print(vim.bo.buftype)<CR>', {})

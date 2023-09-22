
-- if vim.fn.isdirectory('.git') ~= 0 ; returns a number, 0 means false, ~=0 anything else
-- :h isdirectory

local options = {}
-- if contains .git/ directory
if vim.fn.isdirectory('.git') ~= 0 then
  vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>lua require(\'telescope.builtin\').git_files({hidden = true})<CR>', options)
else
  vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua require(\'telescope.builtin\').find_files({hidden = true})<CR>', options)
end


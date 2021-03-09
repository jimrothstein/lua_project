-- :lua vim.wo.number = true
-- vim.api.nvim_set_win_option('number', true)
-- lua print(vim.wo.number)

-- since in a lua file only need && reload
vim.wo.number = true
vim.wo.number = false
vim.bo.shiftwidth = 4    
  

--  nvim_tabpage_get_number(0)
--prefix = vim.api
-- api's   nvim_tabpage_get_number
--
local x = vim.api.nvim_tabpage_list_wins(0)
print(vim.inspect(x))


vim.api.nvim_open_win(0, false,
  {relative='win', row=3, col=3, width=12, height=3})

-- buffer 0; start line 0; end line 0
-- fails, "strict indexing" ??
-- vim.api.nvim_buf_set_lines(0,0,0, v:true , ['new line added'])


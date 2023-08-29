--  nvim_tabpage_get_number(0)
--prefix = vim.api
-- api's   nvim_tabpage_get_number
--
--
--        BUFFERS
--
print("current buf = " .. vim.api.nvim_get_current_buf())
--
--        WINDOWS
print("current win = " .. vim.api.nvim_get_current_win())

--  set global variable
vim.api.nvim_set_var("g_var", "global hello")
print("g: variable  = ", vim.g.g_var)

--[[
vim.api.nvim_open_win(0, false, { relative = "win", row = 3, col = 3, width = 12, height = 3 })

-- buffer 0; start line 0; end line 0
-- fails, "strict indexing" ??
-- vim.api.nvim_buf_set_lines(0,0,0, v:true , ['new line added'])
--]]
--
--
--        TAB PAGE

print("tabpage number = " .. vim.api.nvim_tabpage_get_number(0)) -- 0 = current tabpage

print("current win in tabpage = " .. vim.api.nvim_tabpage_get_win(0))

local x = vim.api.nvim_tabpage_list_wins(0)
print("win in current tabpage = " .. vim.inspect(x))

--    set tab variable, t:
vim.api.nvim_tabpage_set_var(0, "t_var", "hello") -- 0 is current tabpage
print(" t variable = " .. vim.t.t_var)

--[[
vim.api.nvim_open_win(0, false, { relative = "win", row = 3, col = 3, width = 12, height = 3 })

-- buffer 0; start line 0; end line 0
-- fails, "strict indexing" ??
-- vim.api.nvim_buf_set_lines(0,0,0, v:true , ['new line added'])
--]]

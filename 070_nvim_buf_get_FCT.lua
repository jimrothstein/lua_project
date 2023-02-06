--	PURPOSE:		vim.api.nvim_buf_FCT()   Examples
--
--
--	our notification method
local function alert(body)
	require'notify'(body, "info", {title = "Buffer API Example"})
end


-- alert("jim")


--	display lines of current buffer
local buffer_lines = vim.api.nvim_buf_get_lines(0, 1,15, false)
alert(buffer_lines)


--
--  :marks also
local mark_pos = vim.api.nvim_buf_get_mark(0, 't')
--alert(vim.inspect(mark_pos))


--	get option
local shift_width = vim.api.nvim_buf_get_option(0, "shiftwidth")
-- alert(vim.inspect(shift_width))


local file_name = vim.api.nvim_buf_get_name(0)
alert(file_name)
--
--
local buf_num = vim.api.nvim_get_current_buf()
alert(vim.inspect(buf_num))
--
--
local bufs = vim.api.nvim_list_bufs()
-- alert(vim.inspect(bufs))


local cursor = vim.api.nvim_win_get_cursor(0)
alert(vim.inspect(cursor))




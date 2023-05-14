-- file <- "030_buffer_examples."
--	PUROSE:  Random lua practice
--	TAGS:
--	TODO:		 Go through and keep useful only.
--
-- LUA

--  NOTES  --------------------------------------------------
-- This is a .lua file
-- To source it from .vim:   :luafile <file>
-- :luafile % will also work.
--------------------------------------------------
--
--  print first 3 lines of this file
local buf_lines = vim.api.nvim_buf_get_lines(0, 0, 3, 0)
--- print(buf_lines)
print(vim.inspect(buf_lines))

--  get mark `l` (lowercase L)
--  :h nvim_buf_get_mark
local mark_pos = vim.api.nvim_buf_get_mark(0, "l")
print(vim.inspect(mark_pos))

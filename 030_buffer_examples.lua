-- file <- "030_buffer_examples."
-- PURPOSE:   a few vim.api.nvim_buf_X examples--
--

--  NOTES  --------------------------------------------------
-- This is a .lua file
-- To source it from .vim:   :luafile <file>
-- :luafile % will also work.
-- :Nluafile %    ; run line N in current file
--------------------------------------------------
--
--  print first 3 lines of this buffer (0)
local buf_lines = vim.api.nvim_buf_get_lines(0, 0, 3, 0)

--- print(buf_lines)
print(vim.inspect(buf_lines))

--  get mark `l` (lowercase L)
--  :h nvim_buf_get_mark
local mark_pos = vim.api.nvim_buf_get_mark(0, "l")
print("mark is " .. vim.inspect(mark_pos))

--[[ works
local lines = vim.api.nvim_buf_get_lines(0, 1, 9, false)
print(vim.inspect(lines))
--]]

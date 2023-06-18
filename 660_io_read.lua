--
-- PURPOSE:		read from io (not working)
----------------------------------------------------
-- USAGE:  4,5so
local file = "660_io_read.lua"
print(file)
----------------------------------------------------
--
----------------------
--	io.read
--	prints nil ...something wrong
local y = io.read() --
print(y)
----------------------
-- uggggly !:qa
print(vim.inspect(vim.loop.cpu_info())) -- work
io.write(vim.inspect(vim.loop.cpu_info())) -- no work

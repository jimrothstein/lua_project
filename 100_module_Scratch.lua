-- 100_module_Scratch.lua
--
--
--  PURPOSE:   Create simple module; run it from commnd line
--
-- REF:  https://teukka.tech/luanvim.html
--
-------------------------------
local api = vim.api
local M = {}

-- new buffer
function M.makeScratch()
	api.nvim_command("enew") -- :enew
	vim.bo[0].buftype = "nofile" -- set the current buffer's (buffer 0) buftype to nofile
	vim.bo[0].swapfile = false
	-- vim.bo[0].bufhidden = hide
	api.nvim_buf_set_name(0, "a fresh buffer")
end

function M.addText()
	local value = "hello world"
	vim.api.nvim_buf_set_lines(0, 0, 0, false, value)
end
return M

--  To run: (these are vim commands)
----------------------------------------------------------
-- :command! Scratch lua require'100_module_Scratch'.makeScratch()
-- :Scratch
----------------------------------------------------------
-- Notes:   remove the buffer?    :bd
-- Be sure to exit nvim to reload

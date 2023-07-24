--
-- 100_module_Scratch.lua
--
-- 23-July-2023 - code expects to be in  nvim/lua/tools.lua
--
-- 14JAN 2022  - NOT WORKING
-- REF:  https://teukka.tech/luanvim.html
-- scratch buffer
--
local function make2()
	nvim.api.nvim_command("enew")
end
make2()

vim.api.nvim_buf_set_name(0, "my special buffer")

-------------------------------
local api = vim.api
local M = {}

-- new buffer
function M.makeScratch()
	api.nvim_command("enew") -- :enew
	vim.bo[0].buftype = nofile -- set the current buffer's (buffer 0) buftype to nofile
	vim.bo[0].bufhidden = hide
	vim.bo[0].swapfile = false
end
return M

--  To run:
--
-- :command! Scratch lua
-- require'~/code/lua_project/0002_tools.lua'makeScratch()
----------------------------------------------------------
--
-- :Scratch
--
----------------------------------------------------------

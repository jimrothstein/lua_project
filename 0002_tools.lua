-- in tools.lua
-- scratch buffer
local M = {}
function M.makeScratch()
  api.nvim_command('enew')  -- :enew
  vim.bo[0].buftype=nofile -- set the current buffer's (buffer 0) buftype to nofile
  vim.bo[0].bufhidden=hide
  vim.bo[0].swapfile=false
end
return M


-- to run this, ie create the function
-- :luafile %

-- Create the command
-- command! Scratch lua require'tools'.makeScratch()
-- :Scratch   to run


-- put this file in runtimepath where vim will find .lua files
-- To run this function:    
-- " in init.vim
--
-- command! Scratch lua require'tools'.makeScratch()

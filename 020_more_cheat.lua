-- file <- "020_more_cheat.lua-"
--	PUROSE:  Random lua practice
--	TAGS:   multiline comments, expand()
--
-- [[
--	TODO:
-- 30MAY2023
-- Go through and keep useful only.-
--   some things do NOT work; not sure why, spell check?, :wqq:
--
--------------------------------------------------
--  NOTES  --------------------------------------------------
--  PURPOSE:
--  USAGE:    2,3source %
--              OR 2,3so
--
--  DO NOT source:  (unexpected results !)
--      so %
--      :luafile %
--------------------------------------------------
-- ]]
--
--
--[[
Multiline comment ...
In lua, nil or false evaluate to:  false
0 or '', evaluate to: true
--]]

--[[
Lua + neovim:
    *   calls the neovim API | look careful, can see the vim
        *  api.nvim...command("enew") -- creates new file and edits.
        *  vim.bo[0],buftype=nofile
--]]
--
--
--[[
 -------------------------------------------------- 
--  These are vim api ,  called by lua
 -------------------------------------------------- 

-- shortcuts:
local cmd = vim.cmd
cmd("pwd")   -- execute vim Ex: command 

-- current file name:  
print(vim.fn.expand('%'))

--  set vim options
:lua vim.api.nvim_command('set nonumber')   
:lua vim.api.nvim_command('set number!')        -- toggle
vim.api.nvim_command('echo "Hello, Nvim!"')

--  list buffers, vim.cmd is alias for vim.api.nvim_exec()
vim.cmd('buffers') 
vim.api.nvim_exec('buffers')   -- TODO not working

-- print
print(_VERSION)
print("hi")

 -------------------------------------------------- 
-- print, datatypes
-- Data types are converted correctly
 -------------------------------------------------- 
print(vim.api.nvim_eval('1 + 1')) -- 2
print(vim.inspect(vim.api.nvim_eval('[1, 2, 3]'))) -- prints { 1, 2, 3 }
print(vim.inspect(vim.api.nvim_eval('{"foo": "bar", "baz": "qux"}'))) -- { baz = "qux", foo = "bar" }
print(vim.api.nvim_eval('v:true')) -- true
print(vim.api.nvim_eval('v:null')) -- nil

-- vim.api.nvim_command('new')    ## opens new, unnamed buffer

-------------------------------------------------- 
-- If then
-------------------------------------------------- -
x = 41
if x > 40 then
  print('over 40')
else
  print('under')
end

 -------------------------------------------------- 
 --     Highlight on yank
 -------------------------------------------------- 
-- y{motion} will highlight for you!
-- :au TextYankPost * silent! lua vim.highlight.on_yank() 


--   -------------------------------------------------- 
--  make a new Scratch buffer
--   -------------------------------------------------- 
-- tools.lua
local api = vim.api
local M = {}
function M.makeScratch()
  api.nvim.command('enew') -- equal to :enew
  vim.bo[0].buftype=md
end
return M



 -------------------------------------------------- 
--  options
--   -------------------------------------------------- 
-- :lua vim.wo.number = true
-- vim.api.nvim_set_win_option('number', true)
-- lua print(vim.wo.number)

-- in a lua file only need following  (and reload)
vim.wo.number = true
vim.wo.number = false
vim.bo.shiftwidth = 4    



-- TODO not working
vim.spell.check("enormouz")  
]]

-- file <- "use_mymodule.lua"
-- USAGE:   ;luafile %,   must be in same directory as 'modules.lua'
--
local M = require('modules')

M.foo()



-- When module file is in different diretory and NOT source on startup.
local folder = "/home/code/lua_project/"
local file = "modules.lua"

local M2 = require('folder' .. 'modules')


M2.foo()




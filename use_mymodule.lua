-- file <- "use_mymodule.lua"
--
-- PURPOSE:   require & use the existing module ("modules.lua")
--
--CHECK:   'modules.lua' must be in same directory
--
-- USAGE:   :luafile %,   must be in same directory as 'modules.lua'
--
local M = require("modules")
M.foo()
M.sayHello()

--[[   ERRORS !
-- When module file is in different diretory and NOT source on startup.
local folder = "/home/code/lua_project/"
local file = "modules.lua"

local M2 = require("folder" .. "modules")

-- M2.foo()
--]]

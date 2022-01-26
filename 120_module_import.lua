--  file <- "main.lua "
--
--[[ 
  PURPOSE:    This file 'sources' another in same directory.  Then tries to
  call functions found in the source file.  If function created as M and
  returned, then it works.   Otherwise, error.

  This is a multiline string comment.
--]] 
--[[
  USAGE:  :luafile %

--]]
--
-- load another file (in same directory)
--
local mod =  require('simple_function')

mod.sayHello()

-- this won't work; f is not exported, module in source file 
-- FAILS:   mod.f(2)
--

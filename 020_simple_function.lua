-- file <- "simple_function.lua"
-----------------------
--  SIMPLE LUA FUNCTION
-----------------------
--  To run this function
--  :.+1,+7source
local f = function(a,b)
		print("hi")
    print(vim.api.nvim_get_option('laststatus'))
    vim.cmd('echo 42')
end
f(1,2)

--     vim.cmd([[
--         'echo A'
--         'echo B'
--         ]])
--
----------------------
--	require 'modules'
--	several additional functions are there
--------------------
-------------------
-- SOURCE from modules.lua
-------------------
local M = {}
M = require 'modules'

M.foo()
M.sayHello()
M.func_opts {x="a", y="b"}



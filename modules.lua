--file <- "/home/jim/code/lua_project/modules.lua "
--
-----------------------------------------------------------
--  PURPOSE:  Self-contained PRACTICE modules
--  USAGE:   in same folder, write lua file:  require('modules')
--
--  Example:  see  "/home/jim/code/lua_project/use_mymodule.lua"
-----------------------------------------------------------
--
local mymodule = {}

function mymodule.foo()
    print("Hello World!")
end

function mymodule.func_opts(opts)
    local x = opts.x
    local y = opts.y
    print(y)
    print(opts.y)
end


function mymodule.sayHello() 
    print("say hello from M.sayHello ")
end

function mymodule.some_info()
    print(vim.inspect(vim.opt.formatoptions:get()))
    print(vim.bo.comments)
end




return mymodule


--  TO RUN:
--  start lua at cli
--  mymodule = require 'module'   (do not use extension)
--  mymodule.foo()
--
--
--------------------
-- global function
------------------
-- clueless

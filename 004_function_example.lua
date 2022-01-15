
------------------------
--  useful commands
------------------------
--  To RUN this file
--  :luafile %
--
--  :lua print(_VERSION)
--
--
--
--
-----------------------
--  SIMPLE LUA FUNCTION
-----------------------
local f = function(a,b)
    print("a = ", a)
    print("b = ", b)
end

f(1,2)
f(1)


---------------------------
-- FUNCTION with using opts
---------------------------
local g = function(opts)
    local x = opts.bar
    local y = opts.filename
    print(y) 
end

g{bar = true, filename = "somefile"}

g({bar = true, filename = "somefile"})


----------------------------------------
-- print lua objects, with vim.inspect()
----------------------------------------
print(vim.api.nvim_eval('1 + 1')) -- 2
-- print(vim.inspect(vim.api.nvim_eval('[1, 2, 3]'))) -- { 1, 2, 3 }
-- print(vim.inspect(vim.api.nvim_eval('{"bar": "bar", "baz": "qux"}'))) -- { baz = "qux", bar = "bar" }
print(vim.api.nvim_eval('v:true')) -- true
print(vim.api.nvim_eval('v:null')) -- nil

-- works, creates a new file
-- vim.api.nvim_command('new')
--
--
--
-- Alias:    vim.cmd  =  vim.cmd('buffers')  execute multiple lines of code??
-- vim.cmd([[%s/\Vbar/bar/g]])

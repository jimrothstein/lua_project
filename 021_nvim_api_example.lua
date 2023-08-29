------------------------
--  useful commands
------------------------
--  To RUN this file
--  :luafile %
--
--  :lua print(_VERSION)
-----------------------
--  SIMPLE LUA FUNCTION
-----------------------
-- buffer = current, beg line = , end line =0 ,
-- run as :lua call nvim.....
-- call nvim_buf_set_lines(0, 0, 0, v:true, ['first line'])
-- call nvim_buf_set_lines(0, -1, -1, v:true, ['append to end'])

local f = function(a, b)
	print("a = ", a)
	print("b = ", b)
end

f(1, 2)
f(1)([[--
local M = {}

function M.sayHello() 
    print("say hello")
end

return M
]])
---------------------------
-- FUNCTION with using opts
---------------------------
local g = function(opts)
	local x = opts.bar
	local y = opts.filename
	print(y)
end

g({ bar = true, filename = "somefile" })

----------------------------------------
-- print lua objects, with vim.inspect()
----------------------------------------
print(vim.api.nvim_eval("1 + 1")) -- 2
-- print(vim.inspect(vim.api.nvim_eval('[1, 2, 3]'))) -- { 1, 2, 3 }
-- print(vim.inspect(vim.api.nvim_eval('{"bar": "bar", "baz": "qux"}'))) -- { baz = "qux", bar = "bar" }
print(vim.api.nvim_eval("v:true")) -- true
print(vim.api.nvim_eval("v:null")) -- nil

-- works, creates a new file
-- vim.api.nvim_command('new')
--
--
--
-- Alias:    vim.cmd  =  vim.cmd('buffers')  execute multiple lines of code??
-- vim.cmd([[%s/\Vbar/bar/g]])
--
------------------------------
-- VIM.API.NVIM_BUF_ATTACH()
-- :h api.txt
----------------------------
--[[ from docs:
                    {opts}         Optional parameters.
                                   • on_lines: Lua callback invoked on change.
                                     Return `true` to detach. Args:
                                     • the string "lines"
                                     • buffer handle
                                     • b:changedtick
                                     • first line that changed (zero-indexed)
                                     • last line that was changed
                                     • last line in the updated range
                                     • byte count of previous contents
                                     • deleted_codepoints (if `utf_sizes` is
                                       true)
                                     • deleted_codeunits (if `utf_sizes` is
                                       true)
--]]
--
local events = {}
vim.api.nvim_buf_attach(0, false, {
	on_lines = function()
		table.insert(events)
	end,
})
print(vim.inspect(events))

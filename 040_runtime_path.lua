
lua vim.cmd('echo "hi"')

--	print names of all global variables, stored in _G
vim.cmd('echo nvim_list_runtime_paths()')


-- also works
local x = vim.cmd('echo nvim_list_runtime_paths()')
print(x)


 local f = assert(io.open('out', "w"))
    local t = f:write(x)
    f:close()




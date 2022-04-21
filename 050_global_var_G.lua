-- file <- "050_global_var_G.lua"
-- PURPOSE:		Work with _G
--
--
--
lua vim.cmd('echo "hi"')

--	print names of all global variables, stored in _G

for n in pairs(_G) do print(n) end


function _G.statusline()
    local filepath = '%f'
    local align_section = '%='
    local percentage_through_file = '%p%%'
    return string.format(
        '%s%s%s',
        filepath,
        align_section,
        percentage_through_file
    )
end

--	To run, must use vimscript
-- set statusline=%!v:lua.statusline()
-- v:lua.funct()
-- 
print(_G.statusline())


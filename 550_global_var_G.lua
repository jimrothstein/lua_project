----------------------------------------------------
-- file <- "050_global_var_G.lua"
-- PURPOSE:		Work with _G
--
----------------------------------------------------
--
--
--
-------------------------------------
--	_G is special table of all globals
--
--	EXAMPLE:   true/false is does _G have entry _G['_G']
--	USAGE   :lua print(_G['_G'] == _G] 
-------------------------------------
--- lua print(_G['_G'] == _G] 


-------------------------------------
--	create GLOBAL variable, print it
--	create a global (default is global,  specify local with prefix)

--	the_line = io.read()
lua jim = "jim_is_global"
lua print(jim)

-- returns true
lua print(_G['jim'] == jim)
-------------------------------------
  --
--- error
 if jim == "jim_is_global" then print("yes") end
--
--
--
-------------------------------------
--	run simple lua command at vim CLI
:lua vim.cmd('echo "hi"')
-------------------------------------



-------------------------------------
--	print ALL GLOBAL variables
--	print names of all global variables, stored in _G

for n in pairs(_G) do print(n) end
----------------------------------------------------


-- :a,bsource  
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
print(_G)


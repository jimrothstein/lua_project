-- file <- "/home/jim/code/lua_project/010_lua_cheat.lua"

--	PURPOSE:  Collection of examples.
--	USAGE:    :a,bsource  where a,b are line numbers to source
------------------------
--  useful commands  (:grep 'vim.' %)
------------------------
-- :h api.txt
-- :scriptnames   -- all loaded .vim and .lua

--  TODO:
--  vim.api.nvim_echo needs more work
--
--
--
----------
--  SOURCE
----------
--  :luafile %      -- entire file only
--  :1,10source     -- range of lines, no space, no need %, range
--
-----------------------------------
--  :16,19source
-----------------------------------
print('hi')
-----------------------------------WORKING
--	:24,25source  # 1009
local win = vim.fn.win_getid()
print(win)

--	filename of current buf
local buf = vim.api.nvim_buf_get_name(0)
print(buf)

-- buf=0  is current buf
local ftype = vim.filetype.match({ buf = 0 })
print(vim.inspect(ftype))
print(ftype)
-----------------------------------
----------
--  :luado <lua expr>
--  USAGE:  set linenr to be line with `lowercase`, then cut&paste to cmd line. 
----------
-- :luado if linenr == 31 then return line:upper() end
-- lowercase
--
--
--
---------------------------------------------
--	Run vimscript inside of lua (LAZY!)
--  :lua vim.cmd( )   To run  a command at :
---------------------------------------------
--  :lua vim.cmd('tabn')  -- move to next tab
--  :lua vim.cmd('e.')    -- open nerdtree menu
--  :lua vim.cmd('source xyz.vim')
--  :lua vim.cmd[[
--                  "all vimscript
--                  "any vimsscript comand
--                  " double brackets make it a mult-line string
--                  " remember to remove --
--                  ]]

--  :lua vim.fn.win_gotoid(2)
--  :lua print(vim.api.nvim_get_option('laststatus'))
--  :lua print(vim.api.nvim_get_option('autoindent'))
--
--  check option
lua print(vim.inspect(vim.opt.autowrite))
lua print(vim.inspect(vim.v.progname))          -- nvim
lua print(vim.inspect(vim.v.progpath))          -- 
lua print(vim.inspect(vim.opt.backup))


--
-- global:
vim.opt.autowrite = true
--
--  window:
vim.opt.cursorline =  true
--
--
-- buffer:
vim.opt.autoindent = true
--

-- set opt with string
vim.opt.wildignore = '*/cache/*,*/tmp/*'
-- set opt with table
vim.opt.wildignore = {'*/cache/*,*/tmp/*'}

-- 
-- Is it vim.o or vim.opt  ??
lua vim.o.laststatus = 2
lua vim.api.nvim_set_option('laststatus', 2)
lua print(vim.api.nvim_get_option('laststatus'))

---------------------------
-- Simple IF_THEN
---------------------------
lua if (vim.v.progname == 'nvim') then print('hi') end  -- nvim


---------------------------
-- PURPOSE:		Run lua expression at vim command line
--
-- EXAMPLE:   :lua <expression with lua>
--
-- EXAMPLE		
--						:lua if (vim.fn.has('nvim')) then print('YES, has nvim') end  
---------------------------
--
-- invoke function vim.fn.has
:h vim.fn

-- To run at command line, cut &paste (with brackets: just lua comment)
--
--	SIMILAR:
--[[
lua if (vim.fn.has('nvim-0.5')) then print('v 0.5') end  -- 0.5
lua if (vim.fn.has('nvim-0.5') == 1) then print('v 0.5') end  -- 0.5
--]]
--
-- To run, as is,  when sourced: 
if (vim.fn.has('nvim')) then print('YES, has nvim') end  -- 0.5

----------------------------------------
-- TODO:  does not print in CLI version of lua
--
--	ipairs
--
function printit(tata)  -- print their types.
	for key, value in ipairs(tata) do print(key, type(value)) end
end
d = { a, b ,c} -- put them in a table
printit(d)
----------------------------------------

--
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
--
--
---------------------------------------------------------------------------
--      vim.notify    where does title appear?
---------------------------------------------------------------------------
vim.notify(" From vim.notify", vim.log.levels.WARN, {title=" jr notify: "})

---------------------------------------------------------------------------
--      define global constants,  vim.g.*
---------------------------------------------------------------------------
# with cursor on next line,  :.,+3 runs all 4 lines
vim.g.is_laptop=true
vim.g.plugin_home=vim.fn.stdpath("data") .. "/site/packer/pack/packer"
print(vim.inspect(vim.g.is_laptop))
print(vim.inspect(vim.g.plugin_home))


---------------------------------------------------------------------------
--     vim.api.nvim_echo ..  sort of works 
---------------------------------------------------------------------------

vim.api.nvim_echo( { {"hi ya", ""} },
true, 
{} 
)

--[[ from luaref. (:h os.getenv)

os.getenv({varname})                                               *os.getenv()*
        Returns the value of the process environment variable {varname}, or
        `nil` if the variable is not defined.

]]

print(os.getenv("HOME"))



------------------------
-- EXAMPLES:    lua functions
------------------------
-- vim.api.X      
--  ==> search :h api.txt, then search X
--
--  EX: X=nvim_set_option
--   vim.api.nvim_set_option('laststatus', 3)              -- set laststatus=3
--   :h api.txt then search `nvim_set_option`
------------------------
-- vim.fn.X
--   search :h lua.txt
------------------------
--  EXAMPLES in this file
------------------------
--  vim.api.nvim_get_option()
--  vim.api.nvim_set_option
--  vim.api.nvim_buf_get_name
--  vim.fn.expand('%:h:p')
--  vim.opt.wildignore = '*/cache/*,*/tmp/*'
--  vim.fn.has('nvim-0.5')
--  vim.api.nvim_list_runtime_paths()
--  (vim.api.nvim_eval('v:true'))
---------------------------------
--  TAGS:   vim.api.*, vim.fn.*, if-then, 
---------------------------------
--
-- Get values of option, then reset it.
print(vim.api.nvim_get_option('laststatus'))
vim.o.laststatus = 2

-- another way to set option
vim.api.nvim_set_option('laststatus', 3)              -- set laststatus=3
print(vim.api.nvim_get_option('laststatus'))

-- Print current buffer name (= filename?)
print(vim.api.nvim_buf_get_name(0))


-- verbose: default is 0; 9 every autocmd -  BE CAREFUL9 every autocmd -  BE
print(vim.api.nvim_get_option('verbose'))
vim.o.verbose=1

--  print directory :h expand   :echo expand('%')
local cwd = vim.fn.expand('%:h:p')
print(vim.inspect(cwd))

--
--  check option
--- lua print(vim.inspect(vim.opt.autowrite))
--- lua print(vim.inspect(vim.v.progname))          -- nvim
--- lua print(vim.inspect(vim.v.progpath))          -- 
--- lua print(vim.inspect(vim.opt.backup))
print(vim.inspect(vim.opt.backup))
print(vim.opt.backup)

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

--- USAGE:    type :, then full line
lua print(vim.api.nvim_buf_get_option(0, 'modifiable'))


---------------
-- function
---------------
local f = function(a,b)
    print("a = ", a)
    print("b = ", b)
end

f(1,2)
f(1)
---------------------------
-- Simple IF_THEN
---------------------------
lua if (vim.v.progname == 'nvim') then print('hi') end  -- nvim

-- invoke function vim.fn.has
:h vim.fn
lua if (vim.fn.has('nvim-0.5')) then print('v 0.5') end  -- 0.5
lua if (vim.fn.has('nvim-0.5') == 1) then print('v 0.5') end  -- 0.5

----------------------------------------
--
----------------------------------------
-- print lua objects, with vim.inspect()
----------------------------------------
print(vim.api.nvim_eval('1 + 1')) -- 2
-- print(vim.inspect(vim.api.nvim_eval('[1, 2, 3]'))) -- { 1, 2, 3 }
-- print(vim.inspect(vim.api.nvim_eval('{"bar": "bar", "baz": "qux"}'))) -- { baz = "qux", bar = "bar" }
--
--
----------------------------------------
-- eval
----------------------------------------
print(vim.api.nvim_eval('v:true')) -- true
print(vim.api.nvim_eval('v:null')) -- nil

----------------------------------------
-- runs ex command 
----------------------------------------
vim.api.nvim_command('ls')

--
-----------------------------------------------------------------------------
-- Alias:    vim.cmd  =  vim.cmd('buffers')  execute multiple lines of code??
-----------------------------------------------------------------------------
-- vim.cmd([[%s/\Vbar/bar/g]])
--
-----------------------------------------------------------------------------
-- print table (:n,msource)
-----------------------------------------------------------------------------
--
local data = {   a = 1,
	b=2,
	c=3}

for key, value in pairs(data) do
  print('\n', key, value)
	print(key)
	print(value)
end


-----------------------------------------------------------------------------
-- runtime directories
-- vim.api.nvim_list_runtime_paths())
-----------------------------------------------------------------------------
p = vim.api.nvim_list_runtime_paths()
for i,j in pairs(p) do
  print(i, j)
end

-----------------------------------------------------------------------------
--  name of buffer
-----------------------------------------------------------------------------
print(vim.inspect(vim.api.nvim_buf_get_name(0)))


--- keymaps
--- nvim_buf_get_keymap({}, {'n'}), lengthy output
:lua print(vim.inspect(vim.api.nvim_buf_get_keymap(0, 'n')))

-- FAILS
local maps = vim.api.nvim_buf_get_keymap(0, 'n' )
Gets a list of buffer-


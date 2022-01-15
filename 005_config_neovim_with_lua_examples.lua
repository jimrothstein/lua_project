
------------------------
--  useful commands
------------------------
-- :h api.txt
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
--
--
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

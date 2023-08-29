-- SET/GET various options
--
-- USAGE:   :so %
--
-- :h vim.opt:get
--
--- fold methods
print(vim.o.foldmethod)
print(vim.opt.foldmethod:get())

print("ft = " .. vim.opt.filetype:get())
print("background = " .. vim.opt.background:get())

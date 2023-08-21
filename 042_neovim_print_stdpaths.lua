-- PURPOSE:    print stdpath for neovim.
--	       Will vary base on ~/.config/nvim   in use
--
--	DO NOT DELETE
--
--	print names of all global variables, stored in _G
-- 	.cmd("echo nvim_list_runtime_paths()")
-- :lua print(vim.inspect(nvim_list_runtime_paths()))
--
vim.cmd("echo $NVIM_APPNAME")
vim.cmd("echo $V")
vim.cmd("echo $VIMRC")
print("config: " .. vim.fn.stdpath("config"))
print("data: " .. vim.fn.stdpath("data"))
print("run: " .. vim.fn.stdpath("run"))
print("state: " .. vim.fn.stdpath("state"))

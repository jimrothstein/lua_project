-- 055_telescope_user_command.lua
--
---------------------------------
-- PURPOSE:
--	Create a vim command `Config` that runs Telescope and finds_files in home dir
-- USAGE:
--	1)   :source %
--	2)   :Config   (opens telescope to ~)
--
---------------------------------
vim.api.nvim_create_user_command(
	'Config',
	function()
		--		require('telescope.builtin').find_files({ cwd = "~/.config/nvim" })
		require('telescope.builtin').find_files({ cwd = "/home/jim" })
	end,
	{}
)

vim.api.nvim_create_user_command(
	'Config',
	function()
		--		require('telescope.builtin').find_files({ cwd = "~/.config/nvim" })
		require('telescope.builtin').find_files({ cwd = "/home/jim" })
	end,
	{}
)

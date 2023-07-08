-------------------------------------------------------------------------
-- PURPOSE:  Autocmd examples
-- USAGE:    :source % then type the shortcut.
-------------------------------------------------------------------------
-- :10,12source %
--
--   Example using an Ex command as the handler: >lua
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.qmd", "*.R" },
	command = "echo 'Entering a Quarto or R file'",
})

local api = vim.api

-------------------

-- PURPOSE:     Autocmd to run external command
-- STATUS:      Not working
local RunFile = api.nvim_create_augroup("RunFile", { clear = true })

api.nvim_create_autocmd({ "BufEnter" }, {
	--        callback = "map <buffer> <F5> :w<cr>:exec '!python3' shellescape(@%, 1)<cr>",
	--command = "map <buffer> <F5> :w<cr>:exec '!python3' shellescape(@%, 1)<cr>",
	--command = "map <buffer> <F5> :!ls<cr>",
	command = ":!ls<cr>",
	pattern = { "*.lua" },
	group = RunFile,
})

----------------------------------------------
--  PURPOSE:    code_action (used with LSP)
--  STATUS:     Not working
--[[
vim.keymap.set("n", "<leader>X", doWork, opts)

--  legacy
local opts = { noremap = true, silent = true }

local function doWork()
	print("triggered by quickfix")
	--     vim.lsp.buf.code_action({
	--         filter = function(a) return a.isPreferred end,
	--         apply = true
	--    })
end
--]]

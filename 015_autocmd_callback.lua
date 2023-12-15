-- PURPOSE:    When saving a buffer, automatically format it.   (Timeout if takes more than 3 sec)
-- USAGE:   source this file;  edit this file (example, move buffer = to left margin;  then save
-- TAGS:   autocmd, format, callback
--
local demo_gp = vim.api.nvim_create_augroup("demo_gp", { clear = true })

--vim.api.nvim_create_autocmd('BufWritePre', {
vim.api.nvim_create_autocmd('BufEnter', {
	group = demo_gp,
	buffer = vim.fn.bufnr(),

	callback = function()
		--		vim.lsp.buf.format({ timeout_ms = 3000 })
		print("Entered buf_name = " .. vim.fn.bufname())
	end,
})

-- To check:   :au BufEnter

--[[
https://vimdoc.sourceforge.net/htmldoc/autocmd.html?utm_source=substack&utm_medium=email#autocmd-remove

:autocmd   (list all )
:autocmd BufWritePre
--]]

print("bufname = " .. vim.inspect(vim.fn.bufname()))

-- vim.api.nvim_create_autocmd('BufEnter', {

--	callback = function()
--	vim.lsp.buf.format({ timeout_ms = 3000 })
-- 	local buffer = vim.fn.bufname(),
-- print(vim.inspect(buffer)),
-- end,
-- })

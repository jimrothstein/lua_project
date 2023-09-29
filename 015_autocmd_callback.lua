-- PURPOSE:    When saving a buffer, automatically format it.   (Timeout if takes more than 3 sec)
-- USAGE:   source this file;  edit this file (example, move buffer = to left margin;  then save
--

-- TAGS:   autocmd, format, callback
--
vim.api.nvim_create_autocmd('BufWritePre', {

	buffer = vim.fn.bufnr(),

	callback = function()
		vim.lsp.buf.format({ timeout_ms = 3000 })
	end,
})


--[[
https://vimdoc.sourceforge.net/htmldoc/autocmd.html?utm_source=substack&utm_medium=email#autocmd-remove

:autocmd   (list all )
:autocmd BufWritePre
--]]

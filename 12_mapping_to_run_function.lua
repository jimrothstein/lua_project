-------------------------------------------------------------------------
-- PURPOSE:  Write a lua function.  Trigger that function with a mapping.
-- USAGE:    :source % then type the shortcut.
-- NEXT:      connect to quickfix !
-------------------------------------------------------------------------
local opts = { noremap = true, silent = true }

local function doWork()
	print("triggered by quickfix")
	--     vim.lsp.buf.code_action({
	--         filter = function(a) return a.isPreferred end,
	--         apply = true
	--    })
end

vim.keymap.set("n", "<leader>X", doWork, opts)

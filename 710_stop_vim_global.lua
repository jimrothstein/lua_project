--  CLAIM:   error global vim, fixed with this

--  TODO
-- 2023-05-21
--  sumneko_lua is deprecated; use lua_ls??

-- require("lspconfig").sumneko_lua.setup({
require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
		},
	},
})

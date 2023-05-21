--  CLAIM:   error global vim, fixed with this

--  TODO
-- 2023-05-21
--  sumneko_lua is deprecated; use lua_??

require("lspconfig").sumneko_lua.setup({
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
		},
	},
})

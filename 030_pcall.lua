--	file <- "030_pcall.lua"
--
--	PURPOSE:  use pcall, if module does NOT exist or has errors.
--
local ok, _ = pcall(require, 'module_with_error')

if not ok then
  -- not loaded
	print("not loaded")
end


print(vim.inspect($VIM))

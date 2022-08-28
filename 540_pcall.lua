--	file <- "030_pcall.lua"
--
--	===============================================================-
--	PURPOSE:  use pcall, if module does NOT exist or has errors.

--  USAGE:		THESE statements may be sourced directly, using
--  :.+1,+4source
--	===============================================================-


local ok, _ = pcall(require, 'module_with_error')

if not ok then
  -- not loaded
	print("not loaded")
end

--	baulks with $	
print(vim.inspect($VIM))


--	===============================================================-
--
--	PURPOSE:  use pcall, if arg of f is string, throws error caught by pcall 
--
function f(v) 
	return v+2
end

a,b = pcall(f, 1)
print(a,b) -- true, 3

a,b = pcall(f, "a")
print(a,b) -- false,  [string ":source ..... 'v' (a string value) ]

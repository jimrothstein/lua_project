local f = function()
	print("hello")
end

print(f)

local g = f -- g, f point to same memory;   note g = f() is differnt; giving f() a name ('g')
print(g)
--------------------------------------------------------------------
--  START HERE
--  https://en.wikibooks.org/wiki/Lua_Functional_Programming/Functions
--  run at cli:     >lua
--
--  anonymous
-- return (function(x) return x*2 end)(1)

-- Passing function
local hello = function()
	print("hello")
end

-- takes a function x, runs x() and returns value
local h = function(x)
	-- return "function h says " .. x() (FAILS)
	return x()
end

h(hello)

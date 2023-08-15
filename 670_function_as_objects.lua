local f = function()
	print("hello")
end

print(f)
local g = f -- g, f point to same memory;   note g = f() is differnt

print(g)

--
-- Passing function
local hello = function()
	print("hello")
end

local h = function(x)
	return x()
end

h(hello)

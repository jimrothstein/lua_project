----------------------------------------------------
--file <- "052_meta_table_methods.lua "
-- PURPOSE:		Work with _G
--
----------------------------------------------------
-------------------------------------
--	PROBLEM:	Create binary operations between two tables

--	EXAMPLE: Define add for 2 'fractions'

--	Define two tables (consider each represents a fraction)
f1 = {a = 1, b=2}
f2 = {a = 2, b=3}

-- Error:	f1 + f2	
--
-- Instead define meta table (just regular table) +  has functions
--
metafraction = {}
function metafraction.__add(f1, f2)
  sum = {}
  sum.b = f1.b * f2.b
  sum.a = f1.a * f2.b + f2.a * f1.b
	-- print(sum.b)
  return sum
end


setmetatable(f1, metafraction)
setmetatable(f2, metafraction)

-- Add 2 fractions?
print('line 1' .. 'not very informative')
print(f1+f2)

s = f1 + f2


print('line 2' .. 'much better')
--	print (display?) each compenent of table s
for _, i in pairs(s) do print(i) end
-------------------------------------
-------------------------------------


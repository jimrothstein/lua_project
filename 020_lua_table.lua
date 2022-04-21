--	PURPOSE:	Play with tables and related functions
--
--	Chapter 19
		a = {10, 20, 30}
	  table.insert(a, 1, 15)
--	  unpack(a)


local colors = { "red", "green", "blue" }

print(colors[1])
print(colors[2])
print(colors[3])

--	#colors returns length (actual index of last element)
io.write("Number of Items : ", #colors, "\n")


-- append
local colors = { "red", "green", "blue" }

table.insert(colors, "orange")
local index = #colors --4 (this is the last index in the table)
print(colors[index])

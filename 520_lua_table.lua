--
---------------------------------------------
--	PURPOSE:	LUA as language:
--					Play with tables and related functions
--
--file <- "020_lua_table.lua"
---------------------------------------------
--
--
--	Chapter 19
--	USAGE:		:luafile %
--
a = { 10, 20, 30 }
table.insert(a, 1, 15)
--	  unpack(a)

--	USAGE:  source all lines in blcok (including bracker)
--	:a,bsource
-- {
local colors = { "red", "green", "blue" }

print(colors[1])
print(colors[2])
print(colors[3])

print(#colors)
--}

--	if done separately, ERROR says colors is nil
--	#colors returns length (actual index of last element)
local colors = { "red", "green", "blue" }
io.write("Number of Items : ", #colors, "\n")

--	USAGE:  source entire block:
--	:a,bsource
-- append {
local colors = { "red", "green", "blue" }

table.insert(colors, "orange")
local index = #colors --4 (this is the last index in the table)
print(colors[index])
-- }

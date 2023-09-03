--  /home/jim/code/lua_project/800_pandoc_lua_filter.lua
--  PURPOSE:   lua fliter
--  USAGE:

--[[
-- pandoc SAMPLE.md \
-- --lua-filter=smallcaps.lua \
-- --lua-filter=change_text.lua \
-- -o sample.html
--]]
--
--[[
function Strong(elem)
	return pandoc.SmallCaps(elem.content)
end
--]]
--
return {
	{
		Strong = function(elem)
			return pandoc.SmallCaps(elem.content)
		end,
	},
}

-- print a lua object in human form
--
--
------------------------------------
--		SIMPLEST
--		:A,Bsource
--
--
---lua-----
---lua-----
--
local the_comment =
	"----------------------------------------------------------------------------------------------------------"
local function separator()
	local pos = vim.api.nvim_win_get_cursor(0)[2]
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, pos) .. the_comment .. line:sub(pos + 1)
	vim.api.nvim_set_current_line(nline)
end
vim.api.nvim_set_keymap("n", "<leader>c", "<cmd>lua separator()<cr>", {})

local t = {}
local t = { "one", "two" }

for _, i in pairs(t) do
	print(i)
end

------------------------------------
--		NeOVIM way?
--
----
--
local hl_normal = vim.print(vim.api.nvim_get_hl_by_name("Normal", true))

-- :4source
vim.print("hi")

-- :.source
vim.notify("helllllll")

-- global function to see table contents
function _G.put(...)
	local objects = {}
	for i = 1, select("#", ...) do
		local v = select(i, ...)
		table.insert(objects, vim.inspect(v))
	end

	print(table.concat(objects, "\n"))
	return ...
end

-- .source
-- or, :lua put(<table>)
put({ 1, "one", 2 })

-- OR ...
--
-- :lua put(vim.loop)
--
-- :lua =vim.loop   (pretty prints)
-- :lua ={4,3,1}

-- print a lua object in human form
--
--
------------------------------------
--		SIMPLEST
--		:A,Bsource
--
t = {}
t = {"one", "two"}

for _, i in pairs(t) do print(i) end
------------------------------------

t = {}
t = {A = "one", B = "two"}

for _, i in pairs(t) do print(i) end
------------------------------------
--		NeOVIM way?
--
----
--
 local hl_normal = vim.pretty_print(vim.api.nvim_get_hl_by_name("Normal", true))

-- :4source
vim.pretty_print("hi")


-- :.source	
vim.notify("helllllll")


-- global function to see table contents
function _G.put(...)
  local objects = {}
  for i = 1, select('#', ...) do
    local v = select(i, ...)
    table.insert(objects, vim.inspect(v))
  end

  print(table.concat(objects, '\n'))
  return ...
end

-- .source 
-- or, :lua put(<table>)
put({1,"one", 2})


-- OR ...
--
-- :lua put(vim.loop)
--
-- :lua =vim.loop   (pretty prints)
-- :lua ={4,3,1}

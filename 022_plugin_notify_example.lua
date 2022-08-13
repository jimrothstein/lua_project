
--	PURPOSE:    Demonstrate  plug-in notify to display messages
--	USAGE:			See example below
--
------------------------
--  useful commands
------------------------
--	ERROR:   unhappy about module `notify`
--  To RUN this file
--  :luafile %
--
--  :lua print(_VERSION)  #5.1
--
--
--
--
local function alert(body)
	require'notify'(body, "info", {title = "Buffer API Example"})
end


alert("jim")

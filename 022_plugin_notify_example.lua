
--	PURPOSE:    Demonstrate  plug-in notify to display messages
--	USAGE:			See example below
--
------------------------
--  useful commands
------------------------
--  To RUN this file
--  :luafile %
--
--  :lua print(_VERSION)
--
--
--
--
local function alert(body)
	require'notify'(body, "info", {title = "Buffer API Example"})
end


alert("jim")

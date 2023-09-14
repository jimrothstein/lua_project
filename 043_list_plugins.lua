-- /home/jim/code/lua_project/043_list_plugins.lua 
--
-- PURPOSE:   list all plugins
-- REF:  https://nanotipsforvim.prose.sh/list-all-your-installed-plugins
--
-- ALSO:   echo $location_of_installed_plugins (SEE ~/.zshenv)
--[[
--
--
:lua for _, v in pairs(require("lazy").plugins()) do print(v[1]) end

--]]

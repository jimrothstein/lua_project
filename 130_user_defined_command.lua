--
-- /home/jim/code/lua_project/130_user_defined_command.lua
--
-- PUPORSE:   create user defined function
-- USAGE:    :Say Jim | :Say a b c
--           : Lost
--           : GoLC
-- NOTE:     command!  means overwrite with new version
--
vim.cmd([[
  :command! -nargs=+ Say :echo "<args>"
  :command! -nargs=0 Lost :pwd
  :command! -nargs=0 GoLC :cd ~/.config/nvim/lua/config/ 
  ]])

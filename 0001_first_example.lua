-- comment
--
-- [[  multi-
-- line
-- comments
-- ]]


-- :lua print(_VERSION)
-- :lua print("hi")

-- To run:   :luafile %
x = 41
if x > 40 then
  print('over 40')
else
  print('under')
end


-- USFUL!    y{motion} will highlight for you!
-- put into init.vim
-- :au TextYankPost * silent! lua vim.highlight.on_yank() 

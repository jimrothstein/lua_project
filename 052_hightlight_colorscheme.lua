-- PURPOSE: Show how to modify highlights, colors etc ...
-- BUT not change entire colorscheme
-
--    :so $VIMRUNTIME/syntax/hitest.vim
local g = function()
        vim.api.nvim_set_hl(0, 'CursorLine', { underline = true, reverse = false  })
        vim.api.nvim_set_hl(0, 'Normal', { underline = true, reverse = false  })

end
g()



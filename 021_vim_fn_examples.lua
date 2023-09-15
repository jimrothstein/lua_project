-----------------------
-- EXAMPLES:   vim.fn.X
 -----------------------

-- vim.fn.X
--   search :h lua.txt
--
------------------------
--  EXAMPLES in this file
------------------------
--  vim.api.nvim_get_option()
--  vim.api.nvim_set_option
--  vim.api.nvim_buf_get_name
--  vim.fn.expand('%:h:p')
--  vim.opt.wildignore = '*/cache/*,*/tmp/*'
--  vim.fn.has('nvim-0.5')
--  vim.api.nvim_list_runtime_paths()
--  (vim.api.nvim_eval('v:true'))
--
--
 ------------------------------------------------------------------------
--PURPOSE:  gm moves to middle of screen, this function puts colorcolumn
-- at this location (gM is middle of text line)
 ------------------------------------------------------------------------
--https://nanotipsforvim.prose.sh/use-cursorcolumn-to-help-you-learn-gm
--
local middle = function()
  local gmColumn = math.floor(vim.fn.winwidth("%") / 2)
  vim.opt.colorcolumn = {gmColumn,80}
end

middle()

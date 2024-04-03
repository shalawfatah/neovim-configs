local M = {}

function M.ToggleLastStatus()
  if vim.o.laststatus == 0 then
    vim.api.nvim_set_option('laststatus', 2)
    vim.o.signcolumn = "yes"
    vim.opt.foldcolumn = '1'
  else
    vim.api.nvim_set_option('laststatus', 0)
    vim.o.signcolumn = "no"
    vim.opt.foldcolumn = '0'
  end
end

return M

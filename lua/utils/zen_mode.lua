-- ZEN MODE <S-Z> call the function

local M = {}

function M.ToggleLastStatus()
  if vim.o.laststatus == 0 then
    vim.o.laststatus = 2
    vim.cmd("Twilight")
  else
    vim.o.laststatus = 0
    vim.cmd("Twilight")
  end
end

return M

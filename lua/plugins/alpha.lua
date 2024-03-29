-- CUSTOMIZE DASHBOARD 

-- local rick = require("utils.assets.rick")
local keyboard = require("utils.assets.keyboard")

return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = keyboard
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("<leader>w", " > Project list", "<cmd>Telescope projects<CR>"),
      dashboard.button("<leader>o", " > File editor", "<CMD>Oil<CR>"),
      dashboard.button("<leader>h", "󰅱 > Command history", ":Telescope command_history<CR>"),
      dashboard.button("<leader>.", " > Neovim Config", ":cd ~/.config/nvim | edit init.lua<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }
    -- Send config to alpha
    alpha.setup(dashboard.opts)
    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

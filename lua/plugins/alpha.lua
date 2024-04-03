-- CUSTOMIZE DASHBOARD

-- local rick = require("utils.assets.rick")
local keyboard = require("utils.assets.keyboard")
-- local schwifty = require("utils.assets.schwifty")

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
      dashboard.button("<leader>w", " > Project list", "<cmd>Telescope projects<CR>"),
      dashboard.button("<leader>s", " > Live Search", ":Telescope live_grep<CR>"),
      dashboard.button("<leader>h", "󰘥 > Help", ":Telescope help_tags<CR>"),
      dashboard.button("<leader>.", " > Neovim Config", ":cd ~/.config/nvim | edit init.lua<CR>"),
      dashboard.button("q", "󰅚 > Quit Neovim", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)
    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

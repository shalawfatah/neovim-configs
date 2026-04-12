-- CUSTOMIZE DASHBOARD

local keyboard = require("utils.assets.keyboard")

return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = keyboard
    dashboard.section.buttons.val = {
      dashboard.button("<leader>w", " > Project list", "<cmd>Telescope projects<CR>"),
      dashboard.button("<leader>s", " > Live Search", ":Telescope live_grep<CR>"),
      dashboard.button("<leader>h", "󰘥 > Help", ":Telescope help_tags<CR>"),
      dashboard.button("<leader>.", " > Neovim Config", ":cd ~/.config/nvim | edit init.lua<CR>"),
      dashboard.button("q", "󰅚 > Quit Neovim", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

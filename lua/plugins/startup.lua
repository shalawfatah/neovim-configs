return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local rick = "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n" ..
                 "⠀⠀⠀⠀⠀⠀⠀⠀⠠⣼⣿⣿⣿⣶⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n" ..
                 "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n" ..
                 "⠀⠀⠀⠀⠀⠀⠀⠀⡀⠚⣿⣿⣿⣿⠿⣉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n" ..
                 "⠀⠀⠀⠀⠀⠀⠈⠉⡿⣷⡉⢻⣿⣿⣿⣿⣧⣠⣿⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀\n" ..
                 "⠀⠀⠀⠀⠀⠀⠀⠀⡇⠸⣷⣾⠁⠹⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n" ..
                 "⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠹⠏⠀⠀⠈⢿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n" ..
                 "⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀\n" ..
                 "⠀⠀⠀⠀⠀⠀⠀⠀⠠⠤⠤⠤⠤⠤⠤⠴⠿⠿⠿⠿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀\n" ..
                 "⢀⡖⠓⢰⣛⠐⢺⠓⠀⢰⣞⠂⡴⠛⠂⣇⣰⣸⠀⡇⡶⣶⢰⣒⠒⢶⠒⢶⣠⠆\n" ..
                 "⠘⢧⡼⠸⠤⠄⠸⠀⠀⠰⣬⠇⠳⡤⠆⠇⠸⠋⠿⠳⠃⠿⠸⠁⠀⠼⠀⠨⠏⠀"


    -- Set header
    dashboard.section.header.val = rick
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("<leader>w", "󰱼 > Project list", "<cmd>Telescope projects<CR>"),
      dashboard.button("<leader>o", " > File editor", "<CMD>Oil<CR>"),
      dashboard.button("<leader>.", "󰁯  > Open Neovim Config", ":cd ~/.config/nvim | edit init.lua<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }
    -- Send config to alpha
    alpha.setup(dashboard.opts)
    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

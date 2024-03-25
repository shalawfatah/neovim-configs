-- CUSTOMIZE DASHBOARD 

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

       local keyboard = ",---,---,---,---,---,---,---,---,---,---,---,---,---,-------,\n" ..
                        "| ~ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | [ | ] | <-    |\n" ..
                        "|---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|\n" ..
                        "| ->| | ? | , | @ | P | Y | F | G | C | R | L | > | | |  <  |\n" ..
                        "|-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|\n" ..
                        "| Caps | A | O | E | U | I | D | H | T | N | S | - |  Enter |\n" ..
                        "|------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|\n" ..
                        "|        | ; | Q | J | K | X | B | M | W | V | Z |          |\n" ..
                        "|------,-',--'--,'---'---'---'---'---'---'-,-'---',--,------|\n" ..
                        "| ctrl |  | alt |                          | alt  |  | ctrl |\n" ..
                        "------'  '-----'--------------------------'------'  '------'"

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

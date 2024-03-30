-- TAKE SCREENSHOTS OF YOUR CODE, ALL OR IN PART: <C-s>

return {
  "michaelrommel/nvim-silicon",
  event = "VeryLazy",
  lazy = true,
  cmd = "Silicon",
  config = function()
    require("silicon").setup({
      font = "FiraCode Nerd Font Mono; Noto Emoji=34",
      theme = "Coldark-Dark",
      pad_horiz = 0,
      pad_vert = 0,
      line_pad = 4,
      no_line_number = true,
      no_round_corner = true,
      output = function()
        return "~/Desktop/" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
      end,
    })
  end,
}

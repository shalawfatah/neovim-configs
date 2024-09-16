-- TAKE SCREENSHOTS OF YOUR CODE, ALL OR IN PART: <C-s>

local opts = { noremap = true, silent = true, nowait = true }
local nv = { "n", "v" }

return {
  "michaelrommel/nvim-silicon",
  event = "VeryLazy",
  cmd = "Silicon",
  keys = {
    { "<C-s>", ":Silicon<CR>", opts, mode = nv }, -- SCREENSHOT
  },
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

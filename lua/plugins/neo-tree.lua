-- FILE EXPLORER, <leader>b TO OPEN/CLOSE THE EXPLORER

local opts = { noremap = true, silent = true, nowait = true }
local nv = { "n", "v" }

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  keys = {
    { "<leader>b", ":Neotree filesystem toggle<CR>", opts, mode = nv }, -- EXPLORER
  },
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        width = 30,
      },
    })
  end,
}

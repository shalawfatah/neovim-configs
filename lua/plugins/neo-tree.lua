-- FILE EXPLORER, <leader>b TO OPEN CLOSE THE EXPLORER 

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
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

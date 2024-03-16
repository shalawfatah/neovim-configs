-- FILE EXPLORER 
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
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

return {
  "cappyzawa/trim.nvim",
  config = function()
    require("trim").setup({
      trim_on_write = false,
    })
  end
}

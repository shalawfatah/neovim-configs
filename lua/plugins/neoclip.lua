-- HAVE MULTIPLE YANKS INSTEAD OF ONE
-- <leader>y TO SEE YOUR YANKS IN TELESCOPE

return {
  "AckslD/nvim-neoclip.lua",
  requires = {
    { "kkharji/sqlite.lua", module = "sqlite" },
  },
  config = function()
    require("neoclip").setup({
      -- history = 1000,
      -- enable_persistent_history = true,
      -- continuous_sync = true,
    })
  end,
}

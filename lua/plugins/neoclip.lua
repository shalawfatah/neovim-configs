-- HAVE MULTIPLE YANKS INSTEAD OF ONE
-- <leader>y TO SEE YOUR YANKS IN TELESCOPE

return {
  "AckslD/nvim-neoclip.lua",
  event = "VeryLazy",
  dependencies = { { "kkharji/sqlite.lua", module = "sqlite" } },
  config = true,
}

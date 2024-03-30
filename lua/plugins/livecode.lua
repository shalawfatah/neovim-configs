-- SHARE CODE WITH OTHERS WITH, :LCStartSession, :LCJoin, :LCStop, AND :LCShareBuffer

return {
  "jxm35/livecode.nvim",
  event = "VeryLazy",
  config = function()
    require("livecode").setup({
      username = "shashan_kaf",
    })
  end,
}

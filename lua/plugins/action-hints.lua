-- SEE WHERE YOUR CODE IS DEFINED ⊛, AND HOW MANY REFERENCES DOES IT HAVE ↱%s 

return {
  "roobert/action-hints.nvim",
  event = "VeryLazy",
  config = function()
    require("action-hints").setup({
      template = {
        definition = { text = " ⊛", color = "#add8e6" },
        references = { text = " ↱%s", color = "#ff6666" },
      },
      use_virtual_text = true,
    })
  end,
}

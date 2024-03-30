-- LIVE SERVER FOR HTML, CSS, JS 

return {
  "barrett-ruth/live-server.nvim",
  event = "VeryLazy",
  config = function()
    require("live-server").setup({
      build = "npm install -g live-server",
      cmd = { "LiveServerStart", "LiveServerStop" },
      config = true,
    })
  end,
}

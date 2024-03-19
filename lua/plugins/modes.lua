-- DIFFERENT COLORS IN DIFFERENT MODES 
return {
  "mvllow/modes.nvim",
  tag = "v0.2.0",
  config = function()
    require("modes").setup({
      colors = {
        insert = "#EEDC82",
        visual = "#5D3FD3",
      },
      line_opacity = 0.15,
      set_cursor = true,
      set_cursorline = true,
    })
  end
}

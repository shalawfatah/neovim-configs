-- MANAGE MARKS 
-- ma CREATES MARK a, mA CREATES MARK A (global), dma REMOVES MARK a
-- m:a SHOWS MARK a IN TELESCOPE, m:W SHOWS MARK W IN TELESCOPE 
-- dm<space> DELETE ALL MARKS IN CURRENT BUFFER

return {
  "chentoast/marks.nvim",
  config = function()
    require("marks").setup()
  end
}

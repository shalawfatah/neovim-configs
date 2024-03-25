-- MOVE AND LEAP AROUND VISIBLE PARTS OF YOUR FILE 
-- USE s THEN DETERMINE THE FIRST TWO LETTERS OF THE WORD YOU ARE MOVING TO 

return {
  "ggandor/leap.nvim",
  config = function()
    require("leap").setup({})
    require('leap').create_default_mappings()
  end
}

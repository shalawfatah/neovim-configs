-- Move and leap around visible parts of your file 
-- Use s then determine the first two letters of the word you are moving to 

return {
  "ggandor/leap.nvim",
  config = function()
    require("leap").setup({})
    require('leap').create_default_mappings()
  end
}

-- TOGGLE COMMON WORDS, LIKE true, false
-- WORKS WITH KEYBINDING SHIFT + Up ARROW

local toggledWords = require("utils.toggled_words")

return {
  "elentok/togglr.nvim",
  opts = {
    register = "t",
    debug = false,
    values = toggledWords,
  },
}

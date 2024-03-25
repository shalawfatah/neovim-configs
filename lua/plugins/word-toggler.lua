-- TOGGLE COMMON WORDS, LIKE true, false 
-- WORKS WITH KEYBINDING SHIFT + Up ARROW

return {
  "elentok/togglr.nvim",
  opts = {
    register = "t",
    debug = false,
    values = {
      ["<"] = ">",
      ["="] = "!=",
      ["+"] = "-",
      ["=="] = "!=",
      ["<="] = ">=",
      ["+="] = "-=",
      ["true"] = "false",
      ["on"] = "off",
      ["even"] = "odd",
    },
  },
}

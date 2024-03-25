-- Toggle common words, like true, false 
-- Works with keybinding Shift + Up arrow

return {
  "elentok/togglr.nvim",
  opts = {
    register = "t",
    debug = false,
    values = {
      ["<"] = ">",
      ["="] = "!=",
      ["+"] = "-",
      ["even"] = "odd",
      ["true"] = "false",
      ["=="] = "!=",
      ["<="] = ">=",
      ["+="] = "-=",
      ["on"] = "off",
    },
  },
}

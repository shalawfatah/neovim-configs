-- TOGGLED WORDS TO BE USED IN elentok/togglr.nvim PLUGIN

return {
  -- Your existing ones
  ["<"] = ">",
  ["="] = "!=",
  ["+"] = "-",
  ["=="] = "!=",
  ["<="] = ">=",
  ["+="] = "-=",
  ["true"] = "false",
  ["on"] = "off",
  ["even"] = "odd",

  -- Boolean variants
  ["yes"] = "no",
  ["enable"] = "disable",
  ["enabled"] = "disabled",
  ["show"] = "hide",
  ["visible"] = "hidden",
  ["open"] = "closed",
  ["expand"] = "collapse",
  ["include"] = "exclude",
  ["allow"] = "deny",
  ["push"] = "pop",
  ["min"] = "max",
  ["start"] = "end",
  ["first"] = "last",
  ["head"] = "tail",
  ["left"] = "right",
  ["top"] = "bottom",
  ["before"] = "after",
  ["prev"] = "next",
  ["up"] = "down",
  ["in"] = "out",
  ["enter"] = "leave", -- useful for React useEffect / event names

  -- JS/TS specific
  ["const"] = "let",
  ["import"] = "export",
  ["async"] = "sync",
  ["null"] = "undefined",
  ["&&"] = "||",
  ["0"] = "1",

  -- React / React Native
  ["ascending"] = "descending",
  ["asc"] = "desc",
  ["row"] = "column",
  ["absolute"] = "relative",
  ["development"] = "production",
  ["light"] = "dark",
  ["horizontal"] = "vertical",
  ["request"] = "response",
  ["get"] = "set",
  ["add"] = "remove",
  ["insert"] = "delete",
  ["read"] = "write",
  ["local"] = "remote",
  ["client"] = "server",
  ["online"] = "offline",
  ["loading"] = "loaded",
  ["success"] = "error",
}

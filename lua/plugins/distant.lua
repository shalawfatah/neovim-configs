-- :DistantConnect ssh://example.com
-- ssh example.com 'curl -L https://sh.distant.dev | sh -s -- --on-conflict overwrite'

return {
  "chipsenkbeil/distant.nvim",
  branch = "v0.3",
  config = function()
    require("distant"):setup()
  end,
}

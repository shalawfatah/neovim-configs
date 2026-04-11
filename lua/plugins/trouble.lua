return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    -- Diagnostics for the whole project
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Project Diagnostics" },
    -- Diagnostics for current file only
    { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics" },
    -- LSP definitions, references, implementations in one list
    { "<leader>xs", "<cmd>Trouble symbols toggle<cr>", desc = "Symbols" },
    { "<leader>xr", "<cmd>Trouble lsp toggle<cr>", desc = "LSP References/Definitions" },
    -- Replace quickfix and loclist with Trouble's nicer UI
    { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Location List" },
  },
}

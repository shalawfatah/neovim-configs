-- CODE FOLDING, zm FOR fold/unfold

local handler = require("utils.fold_line_number")

return {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }
    require("ufo").setup({
      fold_virt_text_handler = handler,
    })
  end,
}

-- CODE FOLDING

return {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },
  config = function()
    local ufo = require("ufo")
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }
    require("ufo").setup({})
    vim.keymap.set("n", "zr", ufo.openAllFolds)
    vim.keymap.set("n", "zm", ufo.closeAllFolds)
    vim.keymap.set("n", "zR", ufo.openFoldsExceptKinds)
    vim.keymap.set("n", "zM", ufo.closeFoldsWith)
    vim.keymap.set("n", "K", function()
      local winid = ufo.peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end)
  end,
}

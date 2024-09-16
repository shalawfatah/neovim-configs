-- MARKDOWN LIVE PREVIEW, <leader>md TO TOGGLE PREVIEW 

local opts = { noremap = true, silent = true, nowait = true }

return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  keys = {
    { "<leader>md", ":MarkdownPreviewToggle<CR>", opts }, -- MARKDOWN TOGGLE
  },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
}

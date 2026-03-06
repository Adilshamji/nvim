return {
  "chomosuke/typst-preview.nvim",
  ft = "typst",
  version = "1.*",
  opts = {},
  config = function(_, opts)
    require("typst-preview").setup(opts)

    vim.keymap.set("n", "<leader>tp", "<cmd>TypstPreview<CR>", { desc = "Typst Preview" })
  end,
}


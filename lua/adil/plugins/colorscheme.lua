return {
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    name = "nord",
    config = function()
      vim.cmd([[colorscheme nord]])
    end,
   },
}


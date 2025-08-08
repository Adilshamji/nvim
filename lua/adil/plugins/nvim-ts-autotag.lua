return {
  "windwp/nvim-ts-autotag",
  event = "VeryLazy",
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true,  -- Auto close tags
        enable_rename = true, -- Auto rename matching tags
        enable_close_on_slash = false -- Auto close on trailing </
      }
    })
  end
}


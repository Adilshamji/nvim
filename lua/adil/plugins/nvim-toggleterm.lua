return{

  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    open_mapping = nil,
    direction = "float",
    start_in_insert = true,
    shade_terminals = true,
  },
  keys = {
    -- normal mode
    { "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", desc = "Terminal float" },
    { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Terminal horizontal" },

    -- terminal mode, same keys inside the terminal
    {
      "<leader>tt",
      [[<C-\><C-n><cmd>ToggleTerm direction=float<cr>]],
      mode = "t",
      desc = "Terminal float",
    },
 },
}


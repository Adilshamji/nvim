return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Icons support
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true, -- Show hidden files
        },
        follow_current_file = true, -- Automatically focus on the current file
        hijack_netrw_behavior = "open_current", -- Replace netrw with Neo-tree
      },
      window = {
        mappings = {
          ["<CR>"] = "open", -- Ensures Enter key opens files
          ["o"] = "open", -- Alternative key for opening
          ["<2-LeftMouse>"] = "open", -- Double click to open
        },
      },
    })

    -- 🔹 Keymaps for Neo-tree
    local keymap = vim.keymap.set
    keymap("n", "<leader>ee", "<cmd>Neotree filesystem toggle<CR>", { desc = "Toggle file explorer" })
    keymap("n", "<leader>ef", "<cmd>Neotree filesystem reveal<CR>", { desc = "Reveal current file in explorer" })
    keymap("n", "<leader>ec", "<cmd>Neotree close<CR>", { desc = "Close file explorer" })
    keymap("n", "<leader>er", "<cmd>Neotree refresh<CR>", { desc = "Refresh file explorer" })
  end,
}


return {
  "nvim-tree/nvim-web-devicons",
  lazy = true,
  config = function()
    vim.g.netrw_banner = 0
    vim.g.netrw_liststyle = 3
    vim.g.netrw_browse_split = 0
    vim.g.netrw_altv = 1
    vim.g.netrw_winsize = 25
    vim.g.netrw_keepdir = 0
    vim.g.netrw_localcopydircmd = "cp -r"

    vim.keymap.set("n", "<leader>ee", ":Ex<CR>", { desc = "Open netrw" })
    vim.keymap.set("n", "<leader>ef", ":Lex %:p:h<CR>", { desc = "Open netrw here" })
  end,
}

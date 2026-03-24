vim.g.mapleader = " "

local keymap = vim.keymap --for conciseness

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR><Esc>", { desc = "Clear search highlight" })

-- Display line
keymap.set({ "n", "v" }, "j", "gj")
keymap.set({ "n", "v" }, "k", "gk")

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk"})

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal size" }) -- Equalize split sizes
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- Close the current split window
keymap.set("n", "<leader>.", "<cmd>vertical resize +10<CR>", { desc = "Increase window width" })
keymap.set("n", "<leader>,", "<cmd>vertical resize -10<CR>", { desc = "Decrease window width" })

keymap.set("n", "<leader>ee", ":Ex<CR>", { desc = "Open netrw" })
keymap.set("n", "<leader>ef", ":Lex %:p:h<CR>", { desc = "Open netrw in current file directory" })

-- Typst
keymap.set("n", "<leader>tp", "<cmd>TypstPreviewStart<CR>", { desc = "Start Typst preview" })
keymap.set("n", "<leader>ts", "<cmd>TypstPreviewStop<CR>", { desc = "Stop Typst preview" })

keymap.set({ "n", "o", "v" }, "L", "g_")

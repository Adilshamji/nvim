local opt = vim.opt

-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 0
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 25
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = "cp -r"

-- others

-- tabs
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2

-- indentation
opt.smartindent = true
opt.autoindent = true -- copy indent from current line when starting a new line

-- line numbers
opt.number = false
opt.relativenumber = false

-- files
opt.swapfile = false

-- search
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if search contains uppercase, make search case-sensitive

-- cursor
opt.cursorline = true

-- colors
opt.termguicolors = true -- enable true color support
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace over indent, end of line, and insert start

-- clipboard
opt.clipboard = "unnamedplus" -- use system clipboard

-- splits
opt.splitright = true -- vertical splits open to the right
opt.splitbelow = true -- horizontal splits open below

-- filetypes
vim.filetype.add({
  extension = { typ = "typst" },
})

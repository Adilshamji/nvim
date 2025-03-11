-- Tree style
--vim.g.netrw_liststyle = 1 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local opt = vim.opt

--Tab
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 2

--indentation
vim.opt.smartindent = true
vim.opt.number = false
vim.opt.relativenumber = true
vim.opt.swapfile = false
opt.autoindent = true --copy indent from current line when strating new one

--Search settings
opt.ignorecase = true --ignore case when searching
opt.smartcase = true -- if include mexied case in search assume want case-sensitive

--cursorline
opt.cursorline = true

--turn on termguicolors for tokyonight color scheme to work
-- (have to use iterm2 or ant other true color terminal
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of file or insert mode

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default

--split windows
opt.splitright = true -- split verical window to the right
opt.splitbelow = true -- split horizontal window to the botoom

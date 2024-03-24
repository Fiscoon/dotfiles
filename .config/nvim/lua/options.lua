local opt = vim.opt

-- General
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--vim.cmd.colorscheme "catppuccin-latte"
vim.o.background = "light"
vim.cmd.colorscheme "gruvbox"

-- UI
opt.number = true
opt.ignorecase = true
opt.cursorline = true
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.confirm = true
opt.mouse = "a"
opt.undofile = true
opt.swapfile = false

-- Set tab width
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true


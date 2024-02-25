-- Enable hybrid line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set tabs to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

-- Enable auto indenting and set it to 4 spaces
vim.opt.ai = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.breakindent = true

vim.opt.history = 500
vim.opt.so = 8

vim.opt.wildmenu = true
vim.opt.wildignore = "*.o,*~,*pyc"

-- Enable incremental searching
vim.opt.incsearch = true
vim.opt.ignorecase = true

-- Better searching
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.showmatch = true

-- Unset the last search pattern register by hitting return
vim.cmd("nnoremap <CR> :noh<CR><CR>")

-- Better splitting
vim.optsplitbelow = true
vim.optsplitright = true

-- Enable mouse mode
vim.optmouse = "a"

-- Enable 24-bit color
vim.opt.termguicolors = true

-- Enable the sign column to prevent the screen from jumping
vim.opt.signcolumn = "yes"

-- Enable cursor line highlight
vim.opt.cursorline = true

-- Place a column line
vim.opt.colorcolumn = "80"

-- Enable access to the system clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

vim.opt.syntax = "on"
vim.opt.wrap = true

vim.g.mapleader = " "

vim.o.cmdheight = 0

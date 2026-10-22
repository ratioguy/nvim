-- Show line number
vim.cmd("se nu")

-- Set colourscheme to gruvbox dark
vim.o.background = "dark"
vim.cmd("set termguicolors")
vim.cmd("colorscheme gruvbox")
vim.cmd("hi SignColumn guibg=none")

-- Disable swapfile
vim.o.swapfile = false 

-- Make mouse copy from terminal
vim.o.mouse = "c"

-- Show and highlight line number
vim.o.number = true
vim.o.cursorline = true
vim.o.cursorlineopt = "number"

-- Case insensitive searching
vim.o.ignorecase = true 

-- Set number width
vim.o.numberwidth = 1

-- Make the backspace key work as intended 
vim.opt.backspace = {'indent', 'eol', 'start'}

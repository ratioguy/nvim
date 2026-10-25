-- Neovim config

-- Plugins
vim.pack.add({
	'https://github.com/ellisonleao/gruvbox.nvim',
	'https://github.com/lukas-reineke/indent-blankline.nvim',
	'https://github.com/lewis6991/gitsigns.nvim',
	'https://github.com/ibhagwan/fzf-lua',
})

-- Settings

-- Set relative number in normal mode only
vim.cmd('set relativenumber')
vim.cmd('au InsertEnter,CmdLineEnter * set norelativenumber | redraw')
vim.cmd('au InsertLeave,CmdlineLeave * set relativenumber')

-- Set colourscheme to gruvbox dark
vim.o.background = "dark"
vim.cmd("set termguicolors")
vim.cmd("colorscheme gruvbox")

-- Show and hide signcollumn
vim.cmd("hi SignColumn guibg=none")
vim.cmd("set signcolumn=yes")

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

-- Options

-- Bind nerdtree to Ctrl + p
vim.keymap.set("n", "<C-p>", "<cmd>FzfLua files<CR>", { desc = "Toggle fzf window" })

-- Require plugin configs
require('plugins.indent-blankline')
require('plugins.gitsigns')

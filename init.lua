-- Neovim config

-- Plugins
vim.pack.add({
	'https://github.com/ellisonleao/gruvbox.nvim',
	'https://github.com/lukas-reineke/indent-blankline.nvim',
	'https://github.com/lewis6991/gitsigns.nvim',
	'https://github.com/ibhagwan/fzf-lua',
	'https://github.com/mason-org/mason.nvim',
	'https://github.com/mason-org/mason-lspconfig.nvim',
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/easymotion/vim-easymotion',
})

-- Settings

-- Set relative number
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.cursorlineopt = "number"

-- Set Space as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Set colourscheme to gruvbox dark
vim.o.background = "dark"
vim.o.termguicolors = true
vim.cmd("colorscheme gruvbox")

-- Show and hide signcollumn
vim.cmd("hi SignColumn guibg=none")
vim.o.signcolumn = "yes" 

-- Disable swapfile
vim.o.swapfile = false 

-- Make mouse copy from terminal
vim.o.mouse = "c"

-- Case insensitive searching
vim.o.ignorecase = true 

-- Set smartsearch for easymotion
vim.g.EasyMotion_smartcase = 1

-- Set number width
vim.o.numberwidth = 1

-- Set tab size
vim.o.tabstop = 4
vim.o.shiftwidth= 4
vim.o.expandtab = true

-- Make the backspace key work as intended 
vim.opt.backspace = {'indent', 'eol', 'start'}

-- Disable auto comment
vim.o.paste = true

-- Options

-- Bind FZF filebrowser to Ctrl + p
vim.keymap.set("n", "<C-p>", "<cmd>FzfLua files<CR>", { desc = "Toggle fzf window" })

-- Macros

vim.cmd("let @s='ggO#!/bin/shj0'")
vim.cmd([[let @y='"+yy']])
vim.cmd([[let @p='"+p ']])
vim.cmd([[let @o='"+P ']])

-- Require plugin configs
require('plugins.indent-blankline')
require('plugins.gitsigns')
require('plugins.lsp')

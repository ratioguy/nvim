-- Neovim config

-- Plugins
vim.pack.add({
	'https://github.com/ellisonleao/gruvbox.nvim',
	'https://github.com/lukas-reineke/indent-blankline.nvim',
	'https://github.com/lewis6991/gitsigns.nvim',
	'https://github.com/ibhagwan/fzf-lua',
})

-- Require plugin configs
require('config.mappings')
require('config.options')
require('plugins.indent-blankline')
require('plugins.gitsigns')

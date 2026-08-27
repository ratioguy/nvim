-- My bindings
local map = vim.keymap.set

-- Bind nerdtree to Ctrl + p
map("n", "<C-p>", "<cmd>FzfLua files<CR>", { desc = "Toggle fzf window" })

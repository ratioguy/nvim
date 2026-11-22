require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = { "lua_ls", "vimls", "bashls", "golangci_lint_ls", "cssls"},
}

vim.lsp.enable("lua_ls", "bashls", "vimls", "golangci_lint_ls", "css_ls" )

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }}}}})

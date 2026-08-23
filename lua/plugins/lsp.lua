local is_nixos = vim.fn.filereadable("/etc/NIXOS") == 1

if not is_nixos then
require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls", "clangd", "bashls", "vtsls", "nil_ls"
  },
})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('bashls')
vim.lsp.enable('vtsls')
vim.lsp.enable('nil_ls')

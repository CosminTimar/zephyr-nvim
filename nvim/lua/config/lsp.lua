require("mason").setup()

require("mason-registry"):on("package:install:success", function(pkg)
  if pkg.name == "cmake-language-server" then
    local py = vim.fn.stdpath("data") .. "/mason/packages/cmake-language-server/venv/Scripts/python.exe"
    vim.system({ "uv", "pip", "install", "pygls<2", "--python", py }):wait()
  end
end)

vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

require("mason-lspconfig").setup({
  ensure_installed = { "cmake", "lua_ls", "clangd" },
})


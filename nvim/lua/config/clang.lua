vim.lsp.config("clangd", {
  cmd = { "clangd", "--enable-config", "--query-driver=**/arm-zephyr-eabi-*" },
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.overlay", "*.dts", "*.dtsi", "*.conf" },
  callback = function()
    if vim.fn.isdirectory("build") == 1 then
      vim.system({ "west", "build", "--cmake-only" })
    end
  end,
})

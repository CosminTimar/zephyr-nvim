return function (capabilities)
	local lua_ls = vim.fn.exepath("lua-language-server")
	if lua_ls == "" then
	  lua_ls = vim.fn.exepath("lua-language-server.cmd")
	end

	vim.lsp.config("lua_ls", {
	  cmd = { lua_ls },
	  capabilities = capabilities,
	  settings = {
	    Lua = {
	      diagnostics = { globals = { "vim" } },
	      workspace = { checkThirdParty = false },
	    },
	  },
	})


	vim.lsp.enable("lua_ls")

end

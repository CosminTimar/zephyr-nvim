
-- CMake support --
return function (capabilities)
	local cmake_ls = vim.fn.exepath("cmake-language-server")
	if cmake_ls == "" then
		cmake_ls = vim.fn.exepath("cmake-language-server.exe")
	end
	if cmake_ls ~= "" then
		vim.lsp.config("cmake", {
			cmd = { cmake_ls },
			capabilities = capabilities,
			root_markers = {
				"CMakeLists.txt",
				".git",
			},
			init_options = {
				buildDirectory = "build",
			},
		})
		vim.lsp.enable("cmake")
	else
		vim.schedule(function ()
			vim.notify(
				"cmake-language-server not found in PATH", vim.log.levels.WARN
			)
		end)
	end
end

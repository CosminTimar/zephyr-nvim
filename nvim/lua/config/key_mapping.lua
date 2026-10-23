vim.keymap.set('n','<leader>l',function () vim.cmd('Vexplore') end)
vim.keymap.set('n','<leader>e',function () vim.diagnostic.open_float() end)
vim.keymap.set('n','<leader>g', vim.lsp.buf.definition)

local builtin = require("telescope.builtin")
vim.keymap.set('n','<leader>ff', builtin.find_files)
vim.keymap.set('n','<leader>fo', builtin.oldfiles)

local lazypath = vim.fn.stdpath("data").."/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("config.lazy")
require("config.telescope")
require("config.lsp")
require("config.key_mapping")
require("config.cmp")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("config.clang")
require("config.lua")(capabilities)
require("config.cmake")(capabilities)

-- My custom config

vim.wo.relativenumber = true

vim.g.netrw_altv = 1
vim.g.netrw_winsize = 35
vim.g.netrw_browse_split = 4



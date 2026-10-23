local telescope = require("telescope");

telescope.setup({
	defaults = {
		layout_strategy = "horizontal",
		storing_strategy = "ascending",
		path_display = {"smart"},
	},
})

pcall(function()
	telescope.load_extension("fzf")
end)

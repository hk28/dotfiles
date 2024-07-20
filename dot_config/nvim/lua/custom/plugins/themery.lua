return {
	"zaldih/themery.nvim",
	priority = 1000,
	-- Minimal config
	opts = {
		themes = {
			--'gruvbox',
			"rose-pine",
			"tokyonight",
			"catppuccin",
		}, -- Your list of installed colorschemes.
		livePreview = true, -- Apply theme while picking. Default to true.
	},

	keys = {
		{ "<leader>uy", "<cmd>Themery<cr>", desc = "Change color theme" },
	},
}

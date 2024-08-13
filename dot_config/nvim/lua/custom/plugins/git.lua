return {
	{
		"NeogitOrg/neogit",
		tag = "v0.0.1",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed, not both.
			"nvim-telescope/telescope.nvim", -- optional
			-- "ibhagwan/fzf-lua", -- optional
		},
		config = true,
		opts = {},
	},
	-- {
	-- 	"SuperBo/fugit2.nvim",
	-- 	opts = {
	-- 		width = 100,
	-- 	},
	-- 	dependencies = {
	-- 		"MunifTanjim/nui.nvim",
	-- 		"nvim-tree/nvim-web-devicons",
	-- 		"nvim-lua/plenary.nvim",
	-- 	},
	-- 	cmd = { "Fugit2", "Fugit2Diff", "Fugit2Graph" },
	-- 	keys = {
	-- 		{ "<leader>F", mode = "n", "<cmd>Fugit2<cr>" },
	-- 	},
	-- },
}

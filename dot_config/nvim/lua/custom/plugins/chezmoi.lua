return {
	{
		"xvzc/chezmoi.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			--  e.g. ~/.local/share/chezmoi/*
			vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
				pattern = { os.getenv("HOME") .. "/.local/share/chezmoi/*" },
				callback = function()
					vim.schedule(require("chezmoi.commands.__edit").watch)
				end,
			})

			-- telscope-config.lua
			local telescope = require("telescope")
			telescope.load_extension("chezmoi")
			vim.keymap.set("n", "<leader>sz", telescope.extensions.chezmoi.find_files, { desc = "Chezmoi" })

			require("chezmoi").setup({
				-- your configurations
			})
		end,
	},
}

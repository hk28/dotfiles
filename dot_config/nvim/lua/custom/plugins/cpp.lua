return {
	{
		"Civitasv/cmake-tools.nvim",
		config = function()
			require("cmake-tools").setup({
				cmake_dap_configuration = { -- debug settings for cmake
					type = "cppdbg",
					request = "launch",
					stopOnEntry = true,
					runInTerminal = true,
					console = "integratedTerminal",
				},
			})
		end,
	},
	{
		-- Toggle between cpp and h files
		"jakemason/ouroboros",
		opts = {},
		-- event = { "CmdlineEnter" },
		ft = { "cpp" },
		keys = {
			{ "<leader>ko", ":Ouroboros<CR>", desc = "Switch between cpp/h files" },
		},
	},
}

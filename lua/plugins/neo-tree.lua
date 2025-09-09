return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false, -- 즉시 로드
	config = function()
		require("neo-tree").setup({
			open_files_do_not_replace_types = { "terminal", "Trouble", "qf" },
			auto_clean_empty_groups = true,
			close_if_last_window = true, -- 마지막 창이면 Neovim 종료
		})
	end,
}

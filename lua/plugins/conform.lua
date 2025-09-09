return {
	"stevearc/conform.nvim",
	event = "BufReadPre",
	config = function()
		vim.g.autoformat = true
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" }, -- 예시
				cpp = { "clang-format" }, -- 예시
				c = { "clang-format" },
				make = { "cmake_format" }, -- 있으면
			},

			format_after_save = function()
				if not vim.g.autoformat then
					return
				else
					if vim.bo.filetype == "ps1" then
						vim.lsp.buf.format()
						return
					end
					return { lsp_format = "fallback" }
				end
			end,

			formatters = {
				goimports_reviser = {
					command = "goimports-reviser",
					args = { "-output", "stdout", "$FILENAME" },
				},
			},
		})
	end,
}

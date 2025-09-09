---@diagnostic disable: missing-fields
return {
	"saghen/blink.cmp",
	lazy = false,
	dependencies = "rafamadriz/friendly-snippets",
	version = "v0.*",
	config = function()
		local is_enabled = function()
			local disabled_ft = {
				"TelescopePrompt",
				"grug-far",
			}
			return not vim.tbl_contains(disabled_ft, vim.bo.filetype)
				and vim.b.completion ~= false
				and vim.bo.buftype ~= "prompt"
		end

		require("blink.cmp").setup({
			enabled = is_enabled,
			keymap = {
				preset = "default",
				["<CR>"] = { "accept", "fallback" },
				["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
				["<C-e>"] = { "hide", "fallback" },
				["<Tab>"] = { "select_next", "fallback" },
				["<S-Tab>"] = { "select_prev", "fallback" },
				["<Up>"] = { "select_prev", "fallback" },
				["<Down>"] = { "select_next", "fallback" },
			},
			completion = {
				menu = {
					scrollbar = false,
					max_height = 20,
					auto_show = is_enabled,
					border = {
						{ "󱐋", "WarningMsg" },
						"─",
						"╮",
						"│",
						"╯",
						"─",
						"╰",
						"│",
					},
				},
				documentation = {
					auto_show = true,
					window = {
						border = {
							{ "", "DiagnosticHint" },
							"─",
							"╮",
							"│",
							"╯",
							"─",
							"╰",
							"│",
						},
					},
				},
			},
		})
	end,
}

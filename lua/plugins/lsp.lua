return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"smiteshp/nvim-navic",
	},
	config = function()
		local lspconfig = require("lspconfig")
		require("lspconfig.ui.windows").default_options.border = "rounded"
		-- Diagnostics
		vim.diagnostic.config({
			signs = true,
			underline = true,
			update_in_insert = true,
			virtual_text = {
				source = "if_many",
				prefix = "●",
			},
		})

		-- 기본 설정 없는 서버들
		local no_config_servers = {
			"docker_compose_language_service",
			"dockerls",
			"html",
			"jsonls",
			"nil_ls",
			"tailwindcss",
			"taplo",
			"templ",
			"terraformls",
			"ts_ls",
			"yamlls",
		}
		for _, server in pairs(no_config_servers) do
			lspconfig[server].setup({})
		end

		----------------------------------------------------
		-- Lua
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					runtime = { version = "LuaJIT" },
					diagnostics = { globals = { "vim" } },
					workspace = {
						checkThirdParty = false,
						library = vim.api.nvim_get_runtime_file("", true),
					},
					telemetry = { enable = false },
				},
			},
		})

		-- C / C++ : clangd
		lspconfig.clangd.setup({
			cmd = { "clangd", "--background-index" },
			filetypes = { "c", "cpp", "objc", "objcpp" },
			root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
		})

		-- Python : pyright
		lspconfig.pyright.setup({
			settings = {
				python = {
					analysis = {
						typeCheckingMode = "basic",
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
					},
				},
			},
		})

		-- Makefile : marksman
		lspconfig.marksman.setup({
			filetypes = { "make" },
		})
	end,
}

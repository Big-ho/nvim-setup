-- lua/config/autocommands.lua
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local general = augroup("General Settings", { clear = true })

-- 줄바꿈 주석 비활성화
autocmd("BufWritePre", {
	callback = function()
		if vim.fn.buflisted("%") == 1 then
			vim.opt.formatoptions:remove({ "c", "r", "o" })
		end
	end,
	group = general,
	desc = "Disable New Line Comment",
})

-- C++, Python, Lua 저장 시 포매팅 실행
autocmd("BufWritePre", {
	pattern = { "*.cpp", "*.hpp", "*.c", "*.h", "*.py", "*.lua" },
	callback = function()
		local ok, conform = pcall(require, "conform")
		if ok then
			conform.format()
		end
	end,
	group = general,
	desc = "Auto format on save",
})

autocmd("VimEnter", {
	callback = function()
		if #vim.fn.argv() == 1 and vim.fn.isdirectory(vim.fn.argv()[1]) == 1 then
			local folder = vim.fn.argv()[1]
			vim.cmd("enew") -- 새 임시 버퍼 생성
			vim.cmd("bdelete! 1") -- 첫 번째 버퍼 삭제
			require("neo-tree.command").execute({ dir = folder, reveal = true })
		end
	end,
})

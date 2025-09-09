return {
	"windwp/nvim-autopairs",
	config = function()
		require("nvim-autopairs").setup({
			enabled = function(bufnr)
				return true -- 버퍼에 따라 자동 괄호 기능을 활성화
			end,
			disable_filetype = { "TelescopePrompt", "spectre_panel", "snacks_picker_input" },
			disable_in_macro = true, -- 매크로 녹화 및 실행 시 비활성화
			disable_in_visualblock = false, -- 비주얼 블록 모드 이후 입력 시 활성화
			disable_in_replace_mode = true, -- 대체 모드에서 비활성화
			ignored_next_char = "[%w%%%'%[%\"%.%`%$]",

			enable_moveright = true, -- 커서를 괄호 안으로 이동
			enable_afterquote = true, -- 따옴표 이후 괄호 자동 추가
			enable_check_bracket_line = true, -- 같은 줄에 괄호 유효성 검사
			enable_bracket_in_quote = true, -- 따옴표 안에서도 괄호 추가

			enable_abbr = false, -- 축약어 기능 비활성화
			break_undo = true, -- Undo 연속 실행 시 구분

			check_ts = false, -- Treesitter 비활성화 (성능 상의 이유)

			map_cr = false, -- Enter 키로 자동 줄바꿈 시 괄호 맞춤
			map_bs = true, -- 백스페이스로 괄호 삭제
			map_c_h = false, -- Ctrl+h로 괄호 삭제 비활성화
			map_c_w = false, -- Ctrl+w로 괄호 삭제 비활성화
		})
	end,
}

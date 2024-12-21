-- lua/plugins/formatter.lua
return {
  "mhartington/formatter.nvim",
  config = function()
    require("formatter").setup({
      logging = true,  -- 로그 출력 여부
      filetype = {
        cpp = {  -- C++ 파일에 대해 clang-format을 설정
          function()
            return {
              exe = "clang-format",  -- 사용 할 포매터
              args = { "--style=Google" },  -- 구글 스타일 적용
              stdin = true  -- 표준 입력으로 포매팅
            }
          end
        },
      }
    })
  end
}


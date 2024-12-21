-- lua/config/autocommands.lua
-- C++ 파일을 저장할 때마다 자동으로 포매팅 실행
vim.cmd("autocmd BufWritePre *.cpp FormatWrite")


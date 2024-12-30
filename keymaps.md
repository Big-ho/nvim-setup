# Keymaps for Neovim

### `lua/config/keymaps.lua`
## 1. Neotree Toggle
- **키맵:** `<leader>e`
- **동작:** Neotree를 토글하여 파일 트리 보기/숨기기

## 2. Pane Navigation (윈도우 탐색)
- **키맵:**
  - `<C-h>` → 왼쪽 패널로 이동
  - `<C-j>` → 아래 패널로 이동
  - `<C-k>` → 위 패널로 이동
  - `<C-l>` → 오른쪽 패널로 이동
- **동작:** 각각의 키는 `Ctrl + w` 명령어로 창 이동을 처리합니다. 이를 통해 여러 창 사이에서 손쉽게 탐색할 수 있습니다.

## 3. CoC.nvim 관련 키맵
- **키맵:**
  - `<C-Space>` → 수동으로 자동완성 창을 새로 고침 (`coc#refresh()`)
  - `<CR>` → 자동완성 메뉴에서 선택한 항목을 확정 (`coc#pum#confirm()`)
  - `<Tab>` → 자동완성 메뉴에서 항목을 다음으로 이동
  - `<S-Tab>` → 자동완성 메뉴에서 항목을 이전으로 이동

이 키맵들은 모두 `mapKey()` 함수를 통해 설정되며, 자동완성 메뉴가 표시될 때만 해당 동작을 적용합니다. 

### `lua/plugins/telescope.lua`
## 4. Telescope 관련 키맵
- **키맵:**
  - `<leader>ff` → 파일 찾기 (`builtin.find_files()`)
  - `<leader>fg` → 텍스트 검색 (`builtin.live_grep()`)
  - `<leader>fb` → 열린 버퍼 목록 보기 (`builtin.buffers()`)
  - `<leader>fh` → 도움말 태그 검색 (`builtin.help_tags()`)

이 키맵들은 `telescope` 플러그인과 함께 사용되며, 파일 탐색, 텍스트 검색, 열린 버퍼 목록 보기 등을 빠르게 할 수 있습니다.


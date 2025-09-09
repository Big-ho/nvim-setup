return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",       -- 필수
    "sindrets/diffview.nvim",      -- 선택적, Diffview 통합
    "ibhagwan/fzf-lua",            -- 선택적
    "echasnovski/mini.pick",       -- 선택적
  },
  config = function()
    -- Diffview 설정
    require("diffview").setup({
      view = {
        default = {
          layout = "diff2_vertical"
        },
      },
    })

    -- Neogit 설정
    require("neogit").setup({
      kind = "split",  -- split 창으로 열기
      signs = {
        section = { "", "" },
        item = { "", "" },
        hunk = { "", "" },
      },
      integrations = { diffview = true },
    })
  end,
}


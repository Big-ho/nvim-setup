return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme tokyonight]])  -- 색상 테마 설정
    -- vim.cmd([[colorscheme tokyonight-night]])
    -- vim.cmd([[colorscheme tokyonight-storm]])
    -- vim.cmd([[colorscheme tokyonight-day]])
    -- vim.cmd([[colorscheme tokyonight-moon]])
  end,
}

local mapKey = require("utils.keyMapper").mapKey

return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")

    -- lua/config/keymaps.lua로 정리하려 했지만 실패
    mapKey("n", '<leader>ff', function() builtin.find_files() end)
    mapKey("n", '<leader>fg', function() builtin.live_grep() end)
    mapKey("n", '<leader>fb', function() builtin.buffers() end)
    mapKey("n", '<leader>fh', function() builtin.help_tags() end)
  end,
}

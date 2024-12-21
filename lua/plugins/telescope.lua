local mapKey = require("utils.keyMapper").mapKey

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        local builtin = require("telescope.builtin")
        
        mapKey("n", '<leader>ff', function() builtin.find_files() end)
        mapKey("n", '<leader>fg', function() builtin.live_grep() end)
        mapKey("n", '<leader>fb', function() builtin.buffers() end)
        mapKey("n", '<leader>fh', function() builtin.help_tags() end)
      end,

    }

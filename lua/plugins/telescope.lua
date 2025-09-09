local mapKey = require("utils.keyMapper").mapKey

return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false, -- 즉시 로드하려면 false
    config = function()
      local builtin = require("telescope.builtin")

      -- Keymaps
      mapKey("n", "<leader>ff", builtin.find_files)
      mapKey("n", "<leader>fg", builtin.live_grep)
      mapKey("n", "<leader>fb", builtin.buffers)
      mapKey("n", "<leader>fh", builtin.help_tags)
    end,
}


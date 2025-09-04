local mapKey = require("utils.keyMapper").mapKey

-- Neotree toggle
mapKey("n", "<leader>e", ":Neotree toggle<CR>")

-- Pane navigation
mapKey("n", "<C-h>", "<C-w>h") -- Left
mapKey("n", "<C-j>", "<C-w>j") -- Down
mapKey("n", "<C-k>", "<C-w>k") -- Up
mapKey("n", "<C-l>", "<C-w>l") -- Right

-- CoC.nvim keymaps
-- Trigger completion manually
mapKey("i", "<C-Space>", "coc#refresh()", { expr = true })

-- Confirm completion with Enter
mapKey("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]], { expr = true, silent = true })


-- Navigate completion menu
mapKey("i", "<Tab>", [[coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"]], { expr = true, silent = true })
mapKey("i", "<S-Tab>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"]], { expr = true, silent = true })


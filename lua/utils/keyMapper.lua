local keyMapper = function(mode, from, to, opts)
  local options = { noremap = true, silent = true }
  opts = opts or {}

  -- Merge user-provided options with defaults
  options = vim.tbl_extend("force", options, opts)

  -- Set the keymap
  vim.keymap.set(mode, from, to, options)
end

return { mapKey = keyMapper }


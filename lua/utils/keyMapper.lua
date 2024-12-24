local keyMapper = function(mode, from, to, opts)
  local options = vim.tbl_extend("keep", {noremap = true, silent = true}, opts or {})

  if not mode or not from or not to then
    vim.notify("Invalid keymap parameters!", vim.log.levels.ERROR)
    return
  end
  
  vim.keymap.set(mode, from, to, options)
end

return { mapKey = keyMapper }


vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.wo.number = true
    vim.wo.relativenumber = false
    vim.wo.colorcolumn = "100"  -- Устанавливаем colorcolumn
  end,
})
-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

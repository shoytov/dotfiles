vim.api.nvim_create_autocmd("BufEnter", {
  command = "set nornu nu",
  command = "set colorcolumn=100",
})
-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

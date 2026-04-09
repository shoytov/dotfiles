---@type LazySpec
return {
  "AstroNvim/astrocore",
  opts = {
    treesitter = {
      -- 🔄 Пустой ensure_installed, т.к. управляем в treesitter.lua
      ensure_installed = {},
      -- 🔄 Не включайте highlight/indent здесь — они теперь в autocmd
    },
  },
}

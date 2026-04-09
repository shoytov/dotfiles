---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main", -- 🔄 новая ветка
  build = ":TSUpdate",
  
  -- 🔄 НОВОЕ: не указывайте main = ..., пусть используется дефолтный entry point
  -- Если есть строка main = "nvim-treesitter.configs" — удалите её полностью
  
  opts = function(_, opts)
    -- 🔄 НОВОЕ: не используйте highlight.enable / indent.enable здесь
    -- Эти опции больше не работают в новом API
    
    -- Оставьте только установку парсеров:
    if type(opts.ensure_installed) == "table" then
      -- AstroVim добавляет свои парсеры, добавляем ваши
      vim.list_extend(opts.ensure_installed, {
        "lua", "python", "javascript", "typescript", -- ваши языки
      })
    end
    
    -- Отключаем авто-установку, если хотите контролировать вручную
    opts.auto_install = false
  end,
  
  -- 🔄 НОВОЕ: установка CLI и парсеров через on_attach, а не init
  config = function(_, opts)
    -- Сначала запускаем стандартный setup от AstroVim
    local ts = require("nvim-treesitter.configs")
    ts.setup(opts)
    
    -- 🔄 Включаем highlight/indent через FileType autocmd (новый способ)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*",
      callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}

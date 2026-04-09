---@type LazySpec
return {
  "stevearc/aerial.nvim",
  version = "*", -- 🔄 снять ограничение версии, если было
  
  opts = function(_, opts)
    opts.backends = { "treesitter", "lsp", "markdown", "man" }
    
    opts.highlight_on_jump = false
    opts.highlight_on_select = false
  end,
  
  init = function()
    if vim.fn.has("nvim-0.12") == 1 then
      -- Создаём заглушку, если плагин ждёт старую функцию
      if not vim.treesitter.start then
        vim.treesitter.start = function(bufnr, lang)
          bufnr = bufnr or 0
          local parser = vim.treesitter.get_parser(bufnr, lang)
          if parser and parser:parse() then
            -- Включаем highlighter через новый API
            local highlighter = vim.treesitter.highlighter
            if highlighter and highlighter.new then
              pcall(function()
                highlighter.new(parser, { lang = lang })
              end)
            end
          end
        end
      end
    end
  end,
}

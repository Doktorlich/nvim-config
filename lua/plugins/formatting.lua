return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Указываем использовать prettierd для всех веб-файлов
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescriptreact = { "prettierd" },
      json = { "prettierd" },
      html = { "prettierd" },
      css = { "prettierd" },
    },
    -- Опционально: настройки самого prettierd
    formatters = {
      prettierd = {
        -- Это заставляет искать конфиг в корне проекта
        condition = function(self, ctx)
          return vim.fs.find({ ".prettierrc", ".prettierrc.json", "prettier.config.js" }, { path = ctx.filename, upward = true })[1]
        end,
      },
    },
  },
}


return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      -- добавь другие форматы по желанию
    },
    formatters = {
      prettier = {
        -- Указываем путь к твоему глобальному конфигу
        args = { "--stdin-filepath", "$FILENAME", "--config", os.getenv("HOME") .. "/.prettierrc" },
        -- Это заставит его работать везде, даже если нет package.json
        require_cwd = false,
      },
    },
  },
}


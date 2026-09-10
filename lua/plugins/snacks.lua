-- Snacks.input дублирует dressing.nvim за перехват vim.ui.input (см. :checkhealth snacks,
-- там `dressing` реально активен, а `Snacks.input` падает с ошибкой, проигрывая гонку).
-- Отключаем именно input-модуль snacks, остальной функционал snacks (explorer, dashboard,
-- notifier и т.д.) не трогаем.
return {
  "folke/snacks.nvim",
  opts = {
    input = { enabled = false },
  },
}

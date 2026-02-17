return {
  -- 1. Добавляем сам плагин темы
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    lazy = false, -- Тема должна загружаться сразу
    priority = 1000, -- Высокий приоритет загрузки
    config = function()
      vim.cmd([[colorscheme dracula]]) -- Активируем тему
    end,
  },
}

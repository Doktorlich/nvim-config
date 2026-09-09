-- Активная тема — Dracula (dark). Другие варианты (Catppuccin Latte, Rose Pine,
-- Gruvbox Material, Kanagawa, GitHub Light и т.д.) обсуждались и опробовались —
-- смотри историю в git log, незачем таскать десятки закомментированных блоков в файле.
return {
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    lazy = false, -- Тема должна загружаться сразу
    priority = 1000, -- Высокий приоритет загрузки
    config = function()
      vim.cmd([[colorscheme dracula]])
    end,
  },
}

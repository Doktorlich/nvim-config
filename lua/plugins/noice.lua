return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- Настройки здесь
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = true, -- классическая строка поиска внизу
      command_palette = true, -- окно команд по центру
      long_message_to_split = true, -- длинные сообщения в отдельном окне
      inc_rename = false, -- поддержка плагина инкрементального переименования
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify", -- обязателен для красивых уведомлений
  }
}


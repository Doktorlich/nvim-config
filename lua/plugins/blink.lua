return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        -- Автоматически выбирать первый подходящий элемент
        list = { selection = { preselect = true, auto_insert = true } },
        menu = {
          draw = {
            -- Отображать иконки и тип (LSP, Snippet и т.д.) для наглядности
            columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
          },
        },
      },
      -- Настройка весов для сортировки
      appearance = {
        highlight_ns = vim.api.nvim_create_namespace("blink_cmp"),
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      -- Самое важное: алгоритм сортировки
      -- По умолчанию blink уже неплохо учитывает близость (proximity bonus),
      -- но мы можем форсировать это.
    },
  },
}


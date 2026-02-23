return {
  {
    -- Указываем плагин, настройки которого хотим изменить
    "windwp/nvim-autopairs",
    -- Используем функцию opts для расширения стандартных настроек LazyVim
    opts = function(_, opts)
      -- Подгружаем модули плагина для создания новых правил и условий
      local Rule = require("nvim-autopairs.rule")
      local cond = require("nvim-autopairs.conds")

      -- Убеждаемся, что список правил существует, и добавляем новое
      opts.rules = opts.rules or {}
      table.insert(
        opts.rules,
        -- Создаем правило: при вводе "$" автоматически добавлять "}"
        Rule("$", "}", {
            -- Список языков, в которых это правило будет активно
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
            "vue",
            "svelte",
          })
          -- Условие: не срабатывать, если перед курсором уже есть "}"
          :with_pair(
            cond.not_after_regex("}")
          )
          -- Условие: срабатывать только если где-то раньше в строке есть обратная кавычка (backtick)
          :with_pair(
            cond.before_text("`")
          )
          -- Главная часть: заменяет стандартное поведение подстановки.
          -- Вместо просто "}" после "$" мы вставляем "{}" и курсор окажется внутри скобок.
          :replace_endpair(
            function()
              return "{}"
            end
          )
      )
    end,
  },
}

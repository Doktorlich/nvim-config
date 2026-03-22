return {
  {
    "windwp/nvim-autopairs",
    opts = function(_, opts)
      local Rule = require("nvim-autopairs.rule")
      local cond = require("nvim-autopairs.conds")

      opts.rules = opts.rules or {}

      table.insert(
        opts.rules,
        Rule("$", "}", { "typescript", "javascript", "typescriptreact", "javascriptreact" })
          -- Проверяем: если перед курсором символ `$`, то при его вводе (триггере)
          -- мы превращаем это в `${}`
          :with_pair(
            cond.not_after_regex("}")
          )
          -- Убираем жесткую привязку к именам узлов Treesitter,
          -- так как ваш парсер выдает общий `@string`
          :replace_endpair(
            function()
              return "{}"
            end
          )
      )
    end,
  },
}

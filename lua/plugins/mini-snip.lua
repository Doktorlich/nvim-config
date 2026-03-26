return {
  {
    "mini.snippets",
    opts = function(_, opts)
      local snippets = require("mini.snippets")

      -- Явно прописываем пути, чтобы не гадать, что подхватилось автоматически
      opts.snippets = {
        -- 1. Загружаем по расширению файла (js, ts, typescriptreact и т.д.)
        snippets.gen_loader.from_lang(),

        -- 2. ПРИНУДИТЕЛЬНО загружаем ваш all.json для всех типов файлов
        -- snippets.gen_loader.from_file(vim.fn.stdpath("config") .. "/snippets/javascriptreact.json"),
        -- snippets.gen_loader.from_file(vim.fn.stdpath("config") .. "/snippets/typescriptreact.json"),
        snippets.gen_loader.from_file(vim.fn.stdpath("config") .. "/snippets/all.json"),
      }

      -- Это ВАЖНО для React: разрешаем "наследование" (чтобы в TSReact были видны TS сниппеты)
      opts.expand = {
        prepare = function(snip)
          return snippets.default_prepare(snip)
        end,
      }
    end,
  },
}

-- Эта строка — «предохранитель». 
-- Если оставить 'if true', то весь код ниже НЕ будет выполнен. 
-- Чтобы конфиг заработал, нужно удалить эту строку или заменить true на false.
-- if false then return {} end

return {
  -- 1. ЦВЕТОВАЯ СХЕМА
  -- Загружает плагин темы gruvbox
  --{ "ellisonleao/gruvbox.nvim" },
  -- Указывает LazyVim использовать именно gruvbox при старте
  --{
  --  "LazyVim/LazyVim",
  --  opts = { colorscheme = "gruvbox" },
  --},

  -- 2. ЭКОСИСТЕМА (Extras)
  -- Импорт готовых наборов настроек от создателей LazyVim.
  -- Они автоматически настраивают LSP, автодополнение и форматирование для указанных языков.
  { import = "lazyvim.plugins.extras.lang.typescript" }, -- Поддержка TS/JS
  { import = "lazyvim.plugins.extras.lang.json" },       -- Поддержка JSON
  { import = "lazyvim.plugins.extras.lang.tailwind" },   -- Поддержка Tailwind CSS
  { import = "lazyvim.plugins.extras.formatting.prettier" }, -- Форматирование кода через Prettier

  -- 3. LSP CONFIG (Настройка языковых серверов)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Включает сервер для работы с MongoDB
        --mongodb_language_server = {},
        -- Включает основной сервер для TypeScript (vtsls пришел на смену tsserver)
   vtsls = {
  settings = {
    typescript = {
      preferences = {
        importModuleSpecifierPreference = "non-relative", -- или "relative"
        quoteStyle = "single",
      },
    },
    javascript = {
      preferences = {
        importModuleSpecifierPreference = "non-relative",
      },
    },
  },
},
      },
    },
  },

  -- 4. TREE-SITTER (Улучшенная подсветка синтаксиса)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Проверяем, что список установленных парсеров существует, и добавляем в него новые языки
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "tsx", "typescript", "javascript", "html", "css", "json", "graphql", "markdown", "lua",
        })
      end
    end,
  },

  -- 5. MASON (Менеджер внешних инструментов)
  {
    "mason-org/mason.nvim",
    opts = {
      -- Список инструментов (LSP, линтеры, форматировщики), 
      -- которые Mason должен установить автоматически при запуске
      ensure_installed = {
        "prettier",   -- Форматировщик
        "eslint-lsp", -- Линтер для JS
        "vtsls",      -- Языковой сервер TS
        "stylua",     -- Форматировщик для Lua
      },
    },
  },

  -- 6. TELESCOPE (Быстрый поиск)
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        -- Создает сочетание клавиш: Пробел + f + p
        "<leader>fp",
        -- Функция открывает поиск файлов внутри папки, где установлены сами плагины Neovim
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File", -- Описание в меню подсказок
      },
    },
  },
}


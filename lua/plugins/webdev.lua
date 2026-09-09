-- Веб-дев тулинг (TS/JS/Tailwind): treesitter-парсеры, Mason-инструменты, доп. keymap.
-- Настройки vtsls живут в одном месте — lua/plugins/lsp.lua, здесь не дублируются.
-- Импорт extras (lang.typescript/json/tailwind, formatting.prettier) теперь только через
-- lazyvim.json / :LazyExtras — раньше дублировался ещё и здесь.

return {
  -- TREE-SITTER (доп. парсеры для веб-стека)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "tsx",
          "typescript",
          "javascript",
          "html",
          "css",
          "json",
          "graphql",
          "markdown",
          "lua",
        })
      end
    end,
  },

  -- MASON (внешние инструменты: LSP, линтеры, форматировщики)
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier", -- Форматировщик
        "eslint-lsp", -- Линтер для JS
        "vtsls", -- Языковой сервер TS
        "stylua", -- Форматировщик для Lua
      },
    },
  },

  -- TELESCOPE: быстрый поиск файлов внутри самих плагинов Neovim
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
    },
  },
}

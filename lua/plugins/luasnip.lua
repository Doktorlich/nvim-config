-- ~/.config/nvim/lua/plugins/luasnip.lua
return {
  "L3MON4D3/LuaSnip",
  -- lazy = false заставит плагин загрузиться при старте, чтобы мы могли его проверить
  lazy = false,
  build = "make install_jsregexp",
  dependencies = {
    "rafamadriz/friendly-snippets",
    "saadparwaiz1/cmp_luasnip",
  },
  config = function()
    local ls = require("luasnip")
    
    -- Загружаем стандартные сниппеты (если нужны)
    require("luasnip.loaders.from_vscode").lazy_load()
    
    -- Загружаем ВАШИ сниппеты
    -- Используем абсолютный путь для исключения ошибок
    require("luasnip.loaders.from_vscode").lazy_load({ 
      paths = { "~/.config/nvim/snippets" } 
    })
  end,
}


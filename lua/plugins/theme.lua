return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "latte",
      term_colors = true,
      styles = {
        comments = { "italic" },
        conditionals = { "bold" }, -- Жирные условия (if/else)
        loops = { "bold" },        -- Жирные циклы
        functions = { "bold" },    -- Жирные названия функций
        keywords = { "bold" },     -- Жирные ключевые слова (return, local и т.д.)
        strings = {},
        variables = {},
        numbers = { "bold" },
        booleans = { "bold" },
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
      },
      -- Если хочешь еще больше контраста, можно чуть подтемнить текст синтаксиса:
		highlight_overrides = {
		  latte = function(colors)
			return {
			  -- 1. ТЕКСТ ПОДСКАЗКИ (val, visualViewport и т.д.)
			  -- Делаем его максимально темным для четкости
			  CmpItemAbbr = { fg = colors.text, style = { "bold" } },

			  -- 2. ТЕКСТ МЕЖДУ НАЗВАНИЕМ И ТИПОМ (самое важное!)
			  -- Это те самые "data: recordsstring", которые плохо видно. 
			  -- Используем более темный серый (subtext0) вместо бледного overlay.
			  CmpItemAbbrDeprecated = { fg = colors.subtext0, style = { "strikethrough" } },
			  CmpItemMenu = { fg = colors.subtext0, style = { "italic" } },

			  -- 3. ЦВЕТ СОВПАДЕНИЯ (буквы 'v-a-l', которые ты ввел)
			  -- Оставляем их яркими, но темными (например, темно-синим)
			  CmpItemAbbrMatch = { fg = colors.blue, style = { "bold" } },
			  CmpItemAbbrMatchFuzzy = { fg = colors.blue, style = { "bold" } },

			  -- 4. ТИП (Variable, Keyword справа)
			  -- Сделаем их чуть насыщеннее, чтобы они не были "розовым туманом"
			  CmpItemKind = { fg = colors.lavender, style = { "bold" } },

			  -- 5. ФОН ОКНА (убираем прозрачность и делаем границы четкими)
			  Pmenu = { fg = colors.text, bg = colors.surface0 }, 
			  PmenuSel = { fg = colors.base, bg = colors.blue, style = { "bold" } },
			  
			  -- Твои предыдущие настройки
			  Comment = { fg = colors.overlay1 },
			}
		  end,
		},
    })
    vim.cmd.colorscheme "catppuccin"
  end,
}

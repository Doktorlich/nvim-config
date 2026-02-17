return {
  "nvim-mini/mini.icons",
  lazy = false,
  opts = {
    directory = {
      -- Git
      [".git"] = { glyph = "", hl = "MiniIconsGrey" },
      
      -- Frontend папки
      ["src"] = { glyph = "󰉫", hl = "MiniIconsBlue" }, -- Изменено на более подходящую иконку
      ["components"] = { glyph = "", hl = "MiniIconsBlue" },
      ["pages"] = { glyph = "󰈙", hl = "MiniIconsPurple" },
      ["views"] = { glyph = "󰈚", hl = "MiniIconsPurple" },
      ["layouts"] = { glyph = "󰌠", hl = "MiniIconsGreen" },
      ["assets"] = { glyph = "󰀵", hl = "MiniIconsYellow" },
      ["styles"] = { glyph = "󰛶", hl = "MiniIconsPink" },
      ["public"] = { glyph = "󰮠", hl = "MiniIconsCyan" },
      ["static"] = { glyph = "󰈬", hl = "MiniIconsCyan" },
      ["dist"] = { glyph = "󰜨", hl = "MiniIconsOrange" },
      ["build"] = { glyph = "󰜨", hl = "MiniIconsOrange" },
      
      -- Backend папки
      ["api"] = { glyph = "󰙨", hl = "MiniIconsGreen" },
      ["server"] = { glyph = "󰅨", hl = "MiniIconsRed" },
      ["controllers"] = { glyph = "󰚥", hl = "MiniIconsBlue" },
      ["models"] = { glyph = "󰚧", hl = "MiniIconsPurple" },
      ["routes"] = { glyph = "󰑴", hl = "MiniIconsYellow" },
      ["middleware"] = { glyph = "󰆧", hl = "MiniIconsGrey" },
      ["database"] = { glyph = "", hl = "MiniIconsOrange" },
      ["db"] = { glyph = "", hl = "MiniIconsOrange" },
      ["migrations"] = { glyph = "󰁨", hl = "MiniIconsCyan" },
      ["seeds"] = { glyph = "󰔄", hl = "MiniIconsGreen" },
      
      -- Общие папки
      ["config"] = { glyph = "󰒓", hl = "MiniIconsGrey" },
      ["utils"] = { glyph = "󰚩", hl = "MiniIconsBlue" },
      ["helpers"] = { glyph = "󰚩", hl = "MiniIconsBlue" },
      ["lib"] = { glyph = "󰗚", hl = "MiniIconsBlue" },
      ["tests"] = { glyph = "󰙨", hl = "MiniIconsRed" },
      ["__tests__"] = { glyph = "󰙨", hl = "MiniIconsRed" },
      ["test"] = { glyph = "󰙨", hl = "MiniIconsRed" },
      ["docs"] = { glyph = "󰈬", hl = "MiniIconsCyan" },
      ["documentation"] = { glyph = "󰈬", hl = "MiniIconsCyan" },
      ["logs"] = { glyph = "󰌢", hl = "MiniIconsGrey" },
      ["tmp"] = { glyph = "󰃢", hl = "MiniIconsGrey" },
      ["temp"] = { glyph = "󰃢", hl = "MiniIconsGrey" },
      ["node_modules"] = { glyph = "", hl = "MiniIconsGreen" },
      ["vendor"] = { glyph = "󰚴", hl = "MiniIconsOrange" },
      ["packages"] = { glyph = "󰏗", hl = "MiniIconsBlue" },
      
      -- Ваши оригинальные настройки
      ["home"] = { glyph = "󰋜", hl = "MiniIconsAzure" },
    },
    file = {
      [".keep"] = { glyph = "󰈚", hl = "MiniIconsGrey" },
      ["devcontainer.json"] = { glyph = "󰆧", hl = "MiniIconsAzure" },
      
      -- Frontend файлы
      ["package.json"] = { glyph = "", hl = "MiniIconsRed" },
      ["package-lock.json"] = { glyph = "", hl = "MiniIconsOrange" },
      ["yarn.lock"] = { glyph = "", hl = "MiniIconsBlue" },
      ["vite.config.js"] = { glyph = "󰉚", hl = "MiniIconsYellow" },
      ["vite.config.ts"] = { glyph = "󰉚", hl = "MiniIconsYellow" },
      ["webpack.config.js"] = { glyph = "󰜫", hl = "MiniIconsBlue" },
      [".eslintrc"] = { glyph = "󰱺", hl = "MiniIconsPurple" },
      [".prettierrc"] = { glyph = "󰰬", hl = "MiniIconsPink" },
      ["tsconfig.json"] = { glyph = "󰛦", hl = "MiniIconsBlue" },
      
      -- Backend файлы
      ["Dockerfile"] = { glyph = "󰡨", hl = "MiniIconsBlue" },
      ["docker-compose.yml"] = { glyph = "󰡨", hl = "MiniIconsBlue" },
      [".env"] = { glyph = "󰟅", hl = "MiniIconsYellow" },
      [".env.example"] = { glyph = "󰟅", hl = "MiniIconsYellow" },
      [".env.local"] = { glyph = "󰟅", hl = "MiniIconsYellow" },
      ["README.md"] = { glyph = "󰈬", hl = "MiniIconsCyan" },
      ["Makefile"] = { glyph = "󰣕", hl = "MiniIconsOrange" },
    },
    filetype = {
      -- Frontend
      javascript = { glyph = "󰌞", hl = "MiniIconsYellow" },
      typescript = { glyph = "󰛦", hl = "MiniIconsBlue" },
      javascriptreact = { glyph = "󰜈", hl = "MiniIconsCyan" },
      typescriptreact = { glyph = "󰜈", hl = "MiniIconsCyan" },
      vue = { glyph = "󰡄", hl = "MiniIconsGreen" },
      svelte = { glyph = "󰠠", hl = "MiniIconsRed" },
      css = { glyph = "󰌜", hl = "MiniIconsBlue" },
      scss = { glyph = "󰌜", hl = "MiniIconsPink" },
      html = { glyph = "󰌝", hl = "MiniIconsOrange" },
      json = { glyph = "󰰦", hl = "MiniIconsYellow" },
      
      -- Backend
      python = { glyph = "󰌠", hl = "MiniIconsYellow" },
      java = { glyph = "󰬷", hl = "MiniIconsRed" },
      go = { glyph = "󰟓", hl = "MiniIconsCyan" },
      rust = { glyph = "󰣕", hl = "MiniIconsOrange" },
      php = { glyph = "󰚩", hl = "MiniIconsPurple" },
      ruby = { glyph = "󰴭", hl = "MiniIconsRed" },
      lua = { glyph = "󰢱", hl = "MiniIconsBlue" },
      sql = { glyph = "󰆼", hl = "MiniIconsOrange" },
      
      -- Конфигурационные файлы
      yaml = { glyph = "󰰳", hl = "MiniIconsPurple" },
      toml = { glyph = "󰰳", hl = "MiniIconsOrange" },
      markdown = { glyph = "󰈬", hl = "MiniIconsCyan" },
      dockerfile = { glyph = "󰡨", hl = "MiniIconsBlue" },
      
      -- Ваш оригинальный
      dotenv = { glyph = "󰟅", hl = "MiniIconsYellow" },
    },
  },
  init = function()
    package.preload["nvim-web-devicons"] = function()
      require("mini.icons").mock_nvim_web_devicons()
      return package.loaded["nvim-web-devicons"]
    end
  end,
}
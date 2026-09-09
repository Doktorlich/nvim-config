# nvim-config

Личная конфигурация Neovim на базе [LazyVim](https://github.com/LazyVim/LazyVim).
Заточена под веб-разработку (TypeScript/React/Tailwind).

## Стек

- **Плагин-менеджер:** [lazy.nvim](https://github.com/folke/lazy.nvim)
- **Автодополнение:** [blink.cmp](https://github.com/Saghen/blink.cmp)
- **Сниппеты:** [mini.snippets](https://github.com/echasnovski/mini.snippets) (+ кастомные сниппеты в `snippets/`)
- **Файловый менеджер:** [mini.files](https://github.com/echasnovski/mini.files) (`<leader>e` / `<leader>E`)
- **Фаззи-поиск:** [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (+ fzf-native, telescope-undo)
- **LSP:** vtsls, cssls, html, emmet_ls — конфиг в `lua/plugins/lsp.lua`
- **Форматирование:** conform.nvim + prettierd
- **Тема:** [dracula.nvim](https://github.com/Mofiqul/dracula.nvim)

## Структура

```
lua/
├── config/       -- options, keymaps, autocmds, lazy.nvim bootstrap
└── plugins/      -- по одному файлу на плагин/тему
snippets/         -- кастомные VSCode-style сниппеты (JS/TS/React)
```

Управление наборами extras LazyVim — через `lazyvim.json` (`:LazyExtras`), это единственный
источник истины для них; в `lua/plugins/*.lua` extras руками не импортируются.

## Установка

```sh
git clone <repo> ~/.config/nvim
nvim
```

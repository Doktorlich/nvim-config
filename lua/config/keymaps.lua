-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Отключаем стрелки в Normal, Insert и Visual режимах
-- Определяем режимы Neovim, в которых будут применены изменения
local modes = { "n", "i", "v" } 
-- Определяем список клавиш-стрелок
local arrows = { "<Up>", "<Down>", "<Left>", "<Right>" }

-- Запускаем цикл по всем режимам и всем стрелкам
for _, mode in ipairs(modes) do
  for _, key in ipairs(arrows) do
    -- Устанавливаем привязку (keymap): в данном режиме (mode) при нажатии стрелки (key)
    -- выполнить <nop> (no operation - ничего не делать), делая их неактивными.
    -- { noremap = true, silent = true } - опции: не рекурсивно и без вывода сообщений
    vim.keymap.set(mode, key, "<nop>", { noremap = true, silent = true })
  end
end


-- Явно переопределяем <leader>e для запуска mini.files
-- vim.keymap.set("n", "<leader>e", function() require("mini.files").toggle() end, { desc = "Toggle MiniFiles" })


-- Удаляем стандартное действие 's' (обычно это поиск вперед) в нормальном режиме ('n')
-- vim.keymap.del("n", "s")

-- Назначаем 's' на открытие поиска проектов/сессий в нормальном режиме ('n')
-- <cmd>Telescope projects<CR> - выполнить команду Telescope projects
-- { desc = ... } - добавляет описание для отображения в меню подсказок LazyVim
-- vim.keymap.set("n", "s", "<cmd>Telescope projects<CR>", { desc = "Restore Session/Find Projects" })

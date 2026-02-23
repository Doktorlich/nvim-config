-- Default options that are always set: https://github.com
-- Add any additional options here

-- Начинаем условный блок: проверяем, запущена ли среда на Windows (win32 возвращает 1)
--if vim.fn.has("win32") == 1 then
-- Комментарий, объясняющий причину экранирования пути
-- Оборачиваем путь в дополнительные кавычки из-за пробела в Program Files

-- Устанавливаем путь к исполняемому файлу оболочки (Git Bash)
--   vim.opt.shell = '"C:\\Program Files\\Git\\bin\\bash.exe"'

-- Устанавливаем флаги для запуска Bash: -s (read commands from stdin), --noprofile, --norc (запуск без загрузки профилей/конфигов), -c (выполнить команду и выйти)
--   vim.opt.shellcmdflag = "-s --noprofile --norc -c"

-- Сбрасываем автоматические кавычки Neovim, так как путь к shell уже вручную обрамлен выше
--    vim.opt.shellquote = ""
--    vim.opt.shellxquote = ""
--end
-- Завершаем условный блок

-- Настраиваем внешний вид курсора во всех режимах (Normal, Visual, Insert, Command-line) на блочный
vim.opt.guicursor = "n-v-i-c:block-Cursor"

-- Полностью отключаем поддержку мыши в Neovim
vim.opt.mouse = ""

-- Глобальная переменная LazyVim, которая принудительно устанавливает текущую рабочую директорию (CWD) как корень проекта
-- vim.g.root_spec = { "cwd" }

-- 1. Отключаем swap-файлы nvim (они бесполезны на медленном HDD и тратят RAM)
vim.opt.swapfile = false

-- 2. Снижаем частоту записи истории изменений (undo) на диск
-- По умолчанию 4000мс, на слабом диске лучше увеличить
vim.opt.updatetime = 10000

-- 3. Если у тебя ОЧЕНЬ мало ОЗУ, можно отключить сохранение истории отмены между перезапусками
-- vim.opt.undofile = false

--сохранение истории после закрытия (Persistent Undo):
--Вы можете сделать так, чтобы Neovim помнил историю изменений даже после перезагрузки компьютера. Для этого добавьте в конфиг (init.lua):
vim.opt.undofile = true

vim.opt.shell = "/bin/bash"

-- local fg_dark = "#4c4f69" -- Темно-серый из палитры Latte
-- local fg_black = "#000000" -- Чистый черный для текста
--
-- vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = fg_dark, bold = true })
-- vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#1e66f5", bold = true }) -- Синий для совпадений
-- vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#6c6f85", italic = true }) -- Текст описания (сигнатура)
-- vim.api.nvim_set_hl(0, "CmpItemKind", { fg = "#8839ef", bold = true }) -- Фиолетовый для типа (Variable)

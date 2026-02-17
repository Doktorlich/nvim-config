-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Автоматическое переключение текущей директории на корень проекта
-- vim.api.nvim_create_autocmd("BufEnter", {
--   callback = function()
--     local path = vim.fn.expand("%:p:h")
--     if vim.fn.isdirectory(path) == 1 then
--       vim.api.nvim_set_current_dir(path)
--     end
--   end,
-- })

-- Группа для автосохранения, чтобы не дублировать команды
--local autosave_group = vim.api.nvim_create_augroup("Autosave", { clear = true })

-- 1. Сохранение при смене фокуса (ушли из окна терминала или переключились на браузер)
-- 2. При выходе из режима вставки (InsertLeave)
-- 3. При переключении между вкладками/буферами внутри Neovim (BufLeave)
--vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "InsertLeave" }, {
--  group = autosave_group,
--  pattern = "*",
--  callback = function()
--    if vim.bo.modified and vim.bo.buftype == "" then
--      vim.cmd("silent! update")
--    end
--  end,
--})

-- Вставьте это в lua/config/options.lua или init.lua
--vim.opt.updatetime = 60000 -- 1000 миллисекунд (1 секунда) простоя

-- Добавьте событие простоя в автокоманду выше
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  group = autosave_group,
  pattern = "*",
  callback = function()
     if vim.bo.modified and vim.bo.buftype == "" then
        vim.cmd("silent! update")
     end
  end,
})

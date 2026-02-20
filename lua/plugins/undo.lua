
--1. Классический Undotree (mbbill/undotree)
--Этот плагин создает ту самую боковую панель с деревом.
--Добавьте этот код в ваш файл с плагинами (например, в lua/plugins/undotree.lua или прямо в init.lua внутри списка плагинов):--
--return {
--  "mbbill/undotree",
--  config = function()
    -- Настройка: чтобы дерево открывалось справа, а не слева (по желанию)
    -- vim.g.undotree_WindowLayout = 2 

    -- Назначаем удобную клавишу. Например, <leader>u
--    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Открыть дерево откатов" })
--  end,
-- }

--Telescope-undo (современный вариант)
--Если вы уже пользуетесь поиском через Telescope, этот плагин интегрирует историю прямо в него.
return {
    "debugloop/telescope-undo.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { -- Открыть историю через Telescope
            "<leader>U",
            "<cmd>Telescope undo<cr>",
            desc = "undo history",
        },
    },
    config = function()
        require("telescope").load_extension("undo")
    end,
}

--Чтобы история не пропадала после закрытия Neovim, обязательно убедитесь, что у вас включен Persistent Undo. Добавьте это в ваш основной конфиг init.lua или options.lua: 
--(включен в options)
--vim.opt.undofile = true

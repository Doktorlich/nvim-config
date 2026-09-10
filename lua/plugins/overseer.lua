-- Запуск npm/pnpm-скриптов (и любых других задач) из редактора с панелью статусов —
-- аналог "npm" tool window в WebStorm.
return {
  "stevearc/overseer.nvim",
  cmd = { "OverseerRun", "OverseerToggle", "OverseerRunCmd" },
  keys = {
    { "<leader>oo", "<cmd>OverseerToggle<cr>", desc = "Overseer: Toggle task list" },
    { "<leader>or", "<cmd>OverseerRun<cr>", desc = "Overseer: Run task" },
    { "<leader>oc", "<cmd>OverseerRunCmd<cr>", desc = "Overseer: Run shell command" },
  },
  opts = {},
}

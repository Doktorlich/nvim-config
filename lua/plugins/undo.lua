-- Telescope-undo: история изменений прямо через Telescope (<leader>U).
-- Persistent Undo включён в lua/config/options.lua (vim.opt.undofile = true) —
-- без этого история не переживёт закрытие Neovim.
return {
  "debugloop/telescope-undo.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>U", "<cmd>Telescope undo<cr>", desc = "undo history" },
  },
  config = function()
    require("telescope").load_extension("undo")
  end,
}

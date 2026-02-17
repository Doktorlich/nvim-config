return {
  {
    "benlubas/molten-nvim",
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.python3_host_prog = vim.fn.expand("~/venv_jupyter/bin/python")
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
    end,
    keys = {
      { "<leader>mi", ":MoltenInit<cr>", desc = "Molten Init" },
      { "<leader>rl", ":MoltenEvaluateLine<cr>", desc = "Molten Eval Line" },
      { "<leader>rr", ":MoltenReevaluateCell<cr>", desc = "Molten Re-eval Cell" },
      { "<leader>rv", ":<C-u>MoltenEvaluateVisual<cr>", mode = "v", desc = "Molten Eval Visual" },
    },
  },
  -- ДОБАВЬ ЭТОТ БЛОК:
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- замени на "ueberzug", если у тебя не Kitty терминал
      integrations = {
        markdown = { enabled = true },
      },
    },
  },
  {
    "GCBallesteros/jupytext.nvim",
    config = true,
  },
}


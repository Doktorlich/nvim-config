return {
  "akinsho/toggleterm.nvim",
  version = "*",
  lazy = false,
  opts = {
    direction = "horizontal",
    size = 15,
    open_mapping = [[<c-\>]], -- Стандартный маппинг тоже оставляем
    start_in_insert = true,
  },
  keys = {
    -- Магия для LazyVim: берем число (count) и открываем нужный терминал
    {
      "<C-/>",
      function()
        local v_count = vim.v.count > 0 and vim.v.count or 1
        vim.cmd(v_count .. "ToggleTerm")
      end,
      desc = "Toggle Terminal with Count (e.g. 2<C-/>)",
      mode = { "n", "t" },
    },
    -- Дубликат для терминалов, которые видят / как _
    {
      "<C-_>",
      function()
        local v_count = vim.v.count > 0 and vim.v.count or 1
        vim.cmd(v_count .. "ToggleTerm")
      end,
      desc = "Toggle Terminal with Count",
      mode = { "n", "t" },
    },
    -- Дополнительные кнопки для удобства
    { "<leader>ts", "<cmd>TermSelect<cr>", desc = "Select Terminal" },
    { "<leader>tn", ":ToggleTermSetName ", desc = "Name Terminal" },
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    -- Настройка ESC и навигации внутри терминала
    function _G.set_terminal_keymaps()
      local t_opts = { buffer = 0 }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], t_opts)
      vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], t_opts)
      vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], t_opts)
      vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], t_opts)
      vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], t_opts)
    end

    vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
  end,
}

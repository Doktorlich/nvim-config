return {
  "selimacerbas/live-server.nvim",
  opts = {
    args = { "--port=8000", "--browser=firefox" },
  },
  config = true,
  keys = {
    { "<leader>ls", "<cmd>LiveServerStart<cr>", desc = "Start Live Server" },
    { "<leader>lx", "<cmd>LiveServerStop<cr>", desc = "Stop Live Server" },
  },
}

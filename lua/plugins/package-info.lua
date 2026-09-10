-- Инлайн-версии зависимостей прямо в package.json (актуальная/устаревшая/невалидная),
-- + установка/обновление/удаление пакета не выходя из редактора.
return {
  "vuki656/package-info.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  event = "BufRead package.json",
  opts = {
    icons = {
      enable = true,
      style = {
        up_to_date = "| ✓ ",
        outdated = "| ↑ ",
        invalid = "| ✗ ",
      },
    },
  },
  keys = {
    { "<leader>cps", function() require("package-info").show() end, desc = "Package Info: Show" },
    { "<leader>cph", function() require("package-info").hide() end, desc = "Package Info: Hide" },
    { "<leader>cpu", function() require("package-info").update() end, desc = "Package Info: Update" },
    { "<leader>cpd", function() require("package-info").delete() end, desc = "Package Info: Delete" },
    { "<leader>cpi", function() require("package-info").install() end, desc = "Package Info: Install" },
    { "<leader>cpv", function() require("package-info").change_version() end, desc = "Package Info: Change version" },
  },
}

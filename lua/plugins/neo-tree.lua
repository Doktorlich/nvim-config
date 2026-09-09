-- Постоянная боковая панель с деревом файлов (как в WebStorm/VSCode),
-- в отличие от mini.files это не всплывающее окно, а докнутая панель слева.
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.window = opts.window or {}
    opts.window.position = "left"

    opts.enable_git_status = true
    opts.enable_diagnostics = false
    opts.window.auto_expand_width = false

    opts.default_component_configs = {
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "  ",
        default = "  ",
      },
    }

    opts.renderers = opts.renderers or {}
    opts.renderers.directory = {
      { "indent" },
      { "icon" },
      { "current_filter" },
      { "name", use_git_status_colors = false },
    }
  end,
}

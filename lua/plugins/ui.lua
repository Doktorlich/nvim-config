return {
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      -- Убираем Telescope из управления Edgy, чтобы не было конфликтов
      opts.filter = function(buf)
        return vim.bo[buf].filetype ~= "TelescopeResults"
      end
    end,
  },
}


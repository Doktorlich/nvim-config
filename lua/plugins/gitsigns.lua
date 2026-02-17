return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- Включает "кто автор" в конце строки
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Навигация по изменениям
      map('n', ']c', function()
        if vim.wo.diff then return ']c' end
        vim.schedule(function() gs.next_hunk() end)
        return '<Ignore>'
      end, {expr=true, desc = "Next Change"})

      map('n', '[c', function()
        if vim.wo.diff then return '[c' end
        vim.schedule(function() gs.prev_hunk() end)
        return '<Ignore>'
      end, {expr=true, desc = "Prev Change"})

      -- Действия
      map('n', '<leader>hs', gs.stage_hunk, {desc = "Stage Hunk"})
      map('n', '<leader>hr', gs.undo_stage_hunk, {desc = "Undo Stage"})
      map('n', '<leader>hp', gs.preview_hunk, {desc = "Preview Hunk (окошко)"})
      map('n', '<leader>hR', gs.reset_hunk, {desc = "Reset Hunk (откатить кусок)"})
    end
  }
}


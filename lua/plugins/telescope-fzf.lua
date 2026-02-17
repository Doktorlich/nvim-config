return {
  "nvim-telescope/telescope-fzf-native.nvim",
  -- Используем ; для PowerShell вместо &&
  build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
  config = function()
    require("telescope").load_extension("fzf")
  end,
}

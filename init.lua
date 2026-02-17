-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Force Neovim to use PowerShell for shell commands on Windows
-- if vim.fn.has("win32") == 1 then
--  vim.o.shell = "powershell.exe"
-- vim.o.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command"
-- end

vim.g.python3_host_prog = vim.fn.expand("~/venv_jupyter/bin/python")
